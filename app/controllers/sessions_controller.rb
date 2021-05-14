class SessionsController < ApplicationController

  def create
    user = User.find_by(email:params[:email])
    if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to root_path, notice: "Vous êtes connecté(e)"
    else
    flash.now[:danger] = 'Mauvaise email/password combinaison'
    render :new
    end
  end

  def destroy 
    session.delete(:user_id)
    redirect_to root_path
  end

end