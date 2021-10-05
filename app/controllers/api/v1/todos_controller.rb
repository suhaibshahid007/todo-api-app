module Api
  module V1
    class TodosController < BaseController

      private

      def permitted_params
        params.permit(:title, :created_by)
      end
    end
  end
end
