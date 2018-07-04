class V1::SessionsController < ApplicationController
#   def create
#      @user = User.where(params[:emails]).first
#      if @user && @user.valid_password?(params[:password])
#       render json: user.as_json(only: [:email, :authentication_token]), status: :created
#       #render :create, status: :created
#      else
#       head(:unauthorized)
#      end
#   end
#
#   def destroy
#     current_user && current_user.authentication_token = nil
#       if current_user.save
#         head(:ok)
#       else
#         head(:unauthorized)
#       end
#   end
# end

module Api
  class SessionsController < Devise::SessionsController
    def create
      self.resource = warden.authenticate!(auth_options)

      sign_in(resource_name, resource)

      yield resource if block_given?

      respond_to do |format|
        format.json do
          data = {
            user_id: resource.id,
            email: resource.email,
            token: resource.authentication_token
          }

          render json: data, status: 201
        end

        format.html do
          respond_with resource, location: after_sign_in_path_for(resource)
        end
      end
    end
  end
end
