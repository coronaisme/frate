class SessionsController < ApplicationController
   before_action :authorized, except: [:new, :create]
   before_action :current_user, except: [:new, :create]

    def new
    end

    def create
      @user = User.find_by(name: params[:name])
      if @user && @user.authenticate(params[:password])
         session[:user_id] = @user.id
         redirect_to @user
        
      else
         if @user == nil
            flash[:notice] = 'User not found.'
         else
            flash[:notice] = "Wrong password."
         end
         redirect_to '/login'
      end
   end

   def destroy
      session[:user_id] = nil
      redirect_to '/homes/home_page'
   end

  end