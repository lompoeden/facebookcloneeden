class SessionsController < ApplicationController
  def new
  end
def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to feeds_path(user.id)
    else
      flash[:danger] = 'login succesful'
      render :new
    end
  end

def destroy
    session.delete(:user_id)
    flash[:notice ] = 'logged out'
    redirect_to new_session_path
  end
end
