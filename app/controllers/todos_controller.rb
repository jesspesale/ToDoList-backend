class TodosController < ApplicationController

    before_action :set_todo only[:show, :update, :destroy]


    

    private
    # gets a todo based on its ID
    def set_todo
        @todo = Todo.find(params[:id])
    end

    def todo_params
        params.require(:todo).permit(:id, :title, :completed)
    end

end
