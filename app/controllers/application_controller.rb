class ApplicationController < ActionController::Base
  include Pagy::Backend

  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def not_found
    redirect_to :root, alert: 'Campground not found'
  end
end
