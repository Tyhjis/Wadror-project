class SessionsController < ApplicationController
  def new
    # renderöi kirjautumissivun
  end

  def create
    # haetaan usernamea vastaava käyttäjä tietokannasta
    user = User.find_by username: params[:username]
    # talletetaan sessioon kirjautuneen käyttäjän id (jos käyttäjä on olemassa)
    session[:user_id] = user.id if not user.nil?
    # uudelleen ohjataan käyttäjä omalle sivulleen
    redirect_to user
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end
end