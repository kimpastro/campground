class ApiController < ActionController::Base
  skip_before_action :verify_authenticity_token

  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def not_found
    render json: { message: 'Not found'}, status: :not_found
  end
end
