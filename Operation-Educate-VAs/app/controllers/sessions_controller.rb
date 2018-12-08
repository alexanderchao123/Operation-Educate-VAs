class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      login_user(user)
      redirect_to user_path(user)
    else
      flash[:errors] = [ "Username or password didn't match" ]
      redirect_to login_path
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end

  private
    def session_params
      params.require(:session).permit(:email, :password)
    end
end
