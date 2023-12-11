class PagesController < ApplicationController
  def index
    @pagy, @campgrounds = pagy(Campground.recently_viewed)
  end
end
