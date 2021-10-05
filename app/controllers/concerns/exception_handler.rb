module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      render json: { message: 'Record not found.' }, status: :not_found
    end

    rescue_from ActiveRecord::RecordInvalid do
      render json: { message: 'Record Invalid.' }, status: :unprocessable_entity
    end
  end
end
