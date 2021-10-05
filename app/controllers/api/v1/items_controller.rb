module Api
  module V1
    class ItemsController < BaseController

      def resources
        @resources ||= todo.items
      end

      def resource
        @resource ||= todo.items.find(params[:id])
      end

      def todo
        @todo ||= Todo.find_by!(id: params[:todo_id])
      end

      private

      def permitted_params
        params.permit(:todo_id, :name, :done)
      end
    end
  end
end
