class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :organizer?

    def login_user(user)
      session[:user_id] = user.id
    end

    def log_out
      session[:user_id] = nil
    end

    def current_user
      User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def logged_in?
      !!current_user
    end

    def authorized?(user)
      current_user.id == user.id
    end

    def check_logged_in
      unless logged_in?
         flash[:danger] = "Please log in."
         redirect_to login_path
      end
   end
end
