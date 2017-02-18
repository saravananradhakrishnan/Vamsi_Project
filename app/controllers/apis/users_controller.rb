class Apis::UsersController < ApplicationController
 before_filter :set_user ,:except => [:create]
 def show
 end
 
 def edit
 end

 def create
  @user = User.new(user_params)
  if @user.save
  end
 end
 
 def update
  if @user.update(user_params)
  else
  end
 end

 def destroy
  if @user.destroy
  else
  end
 end 

 private

 def set_user
  @user = User.find_by_id(params[:id])
 end

 def user_params
  params.require(:user).permit(:email,:mobile,:user_name)
 end
end
