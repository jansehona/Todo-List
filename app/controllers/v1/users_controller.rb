class V1::UsersController < ApplicationController
   before_action :authenticate_user!, except: [:index, :show]

  def index
    @user = User.all
      render json: @user, status: :ok
  end

  def new
    @user = User.new
  end

  def create
         user = User.create(user_params)
         return head(:ok)
  end


  def show
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
