class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(user_params)

    if user
      session[:user_id] = user.id
      flash[:success] = "You are logged in, write some articles"
      redirect_to root_path
    else
      flash[:danger] = "You must sign in to write an article"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "I miss you already"
    redirect_to login_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
