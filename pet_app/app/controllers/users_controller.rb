class UsersController < ApplicationController
  def main
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to user_path @user[:id]
  	else
  		render :new
  	end
  end

  def new
  	@user = User.new
  end

  def show
  	@user = set_user
  end

  def edit
  	@user = set_user
  end

  def update
  	@user = set_user
  	if @user.update_attributes(user_params)
  		redirect_to user_path
  	else
  		render :edit
  	end
  end

  def delete
  	@user = set_user
  	@user.destroy
  	redirect_to 'users/main'
  end

  private

  def set_user
  	User.find(params[:id])
  end

  def user_params
  	params.require(:user).permit(:username, :password, :f_name, :l_name, :city, :prof_pic)
  end

end
