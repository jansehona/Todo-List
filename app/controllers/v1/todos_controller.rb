class V1::TodosController < ApplicationController
  def index
    @todos = Todo.all
    render json: @todos, status: :ok
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      render json: @todo, status: :created
    end
  end

  def show
  end

 def edit
 end
 
  def destroy
    @todo = Todo.destroy(params[:id])
    if @todo.destroy
      head(:ok)
    else
      head(:unprocessed_entity)
    end
  end

  private
  def todo_params
    params.require(:todos).permit(:title, :body, :status)
  end
end
