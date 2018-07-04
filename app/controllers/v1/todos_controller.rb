class V1::TodosController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @todos = Todo.all
    render json: @todos, status: :ok
    #render :create, status: :ok
  end

  def created

  end

  def update
  end

   def destroy
   end
end
