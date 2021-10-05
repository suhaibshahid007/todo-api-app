module Api
  module V1
    class BaseController < ApplicationController
      include ExceptionHandler
      include BaseHandler
      include ApiResponse

      def index
        json_response(resources)
      end

      def create
        if new_resource.save!
          json_response(new_resource, :created)
        else
          json_response({ message: new_resource.errors.full_messages }, :unprocessable_entity)
        end
      end

      def update
        if resource.update(permitted_params)
          json_response(resource)
        else
          json_response({ message: resource.errors.full_messages }, :unprocessable_entity)
        end
      end

      def show
        json_response(resource)
      end

      def destroy
        if resource.destroy
          json_response(resource)
        else
          json_response({ message: resource.errors.full_messages }, :unprocessable_entity)
        end
      end

      def new_resource
        @new_resource ||= model.new(permitted_params)
      end

      def resource
        @resource ||= model.find(params[:id])
      end

      def resources
        @resources = model.all
      end
    end
  end
end

