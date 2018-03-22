class UsersController < ApplicationController
  def edit
  @user = current_user
end

def update
  @user = current_user
  @user.update(user_params)
  redirect_to root_path
end

private

def user_params
  params.require(:user).permit(:first_name, :last_name, :phone_number, :email)
end
end
