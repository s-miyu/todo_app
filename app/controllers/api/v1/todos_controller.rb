module Api
  module V1
    class TodosController < ApplicationController
      def index
        tasks = Todo.all
        render json: tasks
      end

      def create; end
    end
  end
end
