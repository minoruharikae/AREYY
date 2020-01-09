class UsersController < ApplicationController
 

 def show
  @user = User.find(params[:id])
 end

 def edit
  @user = User.find(params[:id])
 end

 def create
  User.create(user_params)
 end
 
 def update
  user = User.find(params[:id])
  user.update(user_params)
  redirect_to user_path(user.id)
 end

 private
 def user_params
   params.require(:user).permit(
     :name, 
     :image, 
     :birthday,
     :age,
     :comment
     )
 end
end
