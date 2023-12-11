class Api::V1::RecentlyViewedsController < ApiController
  include Pagy::Backend

  def index
    pagy, campgrounds = pagy_countless(Campground.recently_viewed, pagy_options)
    render json: { campgrounds: campgrounds, page: pagy.page }
  end

  def create
    campground = Campground.find(params[:id])
    campground.viewed!

    render json: { campground: campground }
  end

  private

  def pagy_options
    {
      page: params[:page] || 1,
      items: params[:items] || Pagy::DEFAULT[:items]
    }
  end
end
