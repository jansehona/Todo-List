class V1::UsersController < ApplicationController
   #before_action :authenticate_user!

  def index
    @user = User.all
      render json: @user, status: :ok
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      head(:unprocessed_entity)
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
