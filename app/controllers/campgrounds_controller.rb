class CampgroundsController < ApplicationController
  def index
    @pagy, @campgrounds = pagy(Campground.ordered)
  end

  def show
    @campground = Campground.find(params[:id])
    @campground.viewed!
  end
end
