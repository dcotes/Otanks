class UsersController < ApplicationController

  before_filter :authorize
  def new
  end

  def update 
  end

  def destroy
  end

  def index
    @users = User.all
  end

 def create
    user = User.new(user_params)
    if user.save
      # session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end


end
