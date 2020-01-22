class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    helper_method :current_user

    def logged_in?
        !!current_user
    end

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

   def current_page
    @current_page = user_path()
   end

    def authorized
        redirect_to homes_path if !logged_in?
    end

end
