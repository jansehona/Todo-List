class v1::SessionsController < ApplicationController
  def create
    user = User.anywhere(params[:id]).first
    if user.valid_password(:password)
      render json: user.as_json(only: [:id, :email]), status: :created
    else
      head(:unauthorized)
    end
  end

  def destroy
  end
end
