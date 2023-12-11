require 'rails_helper'

RSpec.describe Api::V1::RecentlyViewedsController, type: :request do
  let(:body) { JSON.parse(response.body) }

  describe "GET #index" do
    context "when there's no viewed campgrounds" do
      let!(:camp) { create(:campground, :not_viewed) }

      before { get(api_v1_recently_vieweds_path) }
      
      it "should return sucess" do
        expect(response).to have_http_status(200)
      end

      it "should return an empty campgrounds array" do
        expect(body["campgrounds"]).to eq([])
      end
    end

    context "when there's viewed campgrounds" do
      let!(:camp_0) { create(:campground, :viewed) }
      let!(:camp_1) { create(:campground, :viewed) }
      let!(:camp_2) { create(:campground, :not_viewed) }

      before { get(api_v1_recently_vieweds_path) }

      it "should return sucess" do
        expect(response).to have_http_status(200)
      end

      it "should return only viewed campgrounds in order" do
        expected_ids = body["campgrounds"].map {|camp| camp["id"]}
        expect(expected_ids).to eq([camp_1.id, camp_0.id])
      end
    end
  end

  describe "POST #create" do
    let!(:camp) { create(:campground, :not_viewed)}

    it "should set last_viewed_at" do
      expect do
        post(api_v1_recently_vieweds_path, params: { id: camp.id })
        camp.reload
      end.to change { camp.last_viewed_at }
              .from(nil)
              .to(instance_of(ActiveSupport::TimeWithZone))
    end
  end
end
