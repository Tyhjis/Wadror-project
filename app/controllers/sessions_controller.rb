class SessionsController < ApplicationController
  def new
    # renderöi kirjautumissivun
  end

  def create
    user = User.find_by username: params[:username]
    if user.nil?
      redirect_to :back, notice: "Sorry! #{params[:username]} was not found."
    else
      session[:user_id] = user.id
      redirect_to user, notice: "Ready to rock and roll!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end
end