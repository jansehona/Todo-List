class V1::TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  def index
    @todos = Todo.all
      render json: @todos, status: :ok
    #render :create, status: :ok
  end

  def create
    @todo = Todo.new(todo_params)
     if @todo.save
       render json: @todo, status: :created
     else
       head(:unprocessable_entity)
     end
  end

  def show
    render json: @todo
  end

  def update
      if @todo.update(todo_params)
       head :no_content
     else
       head(:unprocessable_entity)
     end
  end

   def destroy
     @todo.destroy
      head :no_content
   end

   private
  # Use callbacks to share common setup or constraints between actions.
  def set_todo
    @todo = Todo.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def todo_params
    params.require(:todo).permit(:title, :description, :status)
  end
end
