class UsersController < ApplicationController
def index
  @users = User.all
  @users.all.each do |user|
    puts user.attributes
    puts user.name
    puts user.email
  end
end

def create
  	@user = User.new user_params
  		if @user.save
    	redirect_to users_index_path, notice: 'Usuario registrado con exito'
  		else
    	render :new
  		end
	end

def new
  render json: params
  @user = User.new
end

#forbidden attributes
private
def user_params
    params.require(:user).permit(:name, :email)
end
end