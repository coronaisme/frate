class UsersController < ApplicationController
  before_action :authorized, except: [:new, :create]
  before_action :current_user, except: [:new, :create]

  def index 
    @users = User.all
  end

  def new 
    @user = User.new
  end

  def create 
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user 
    else 
      flash[:errors] = @user.errors.full_messages
      #might need to recirect here and not render
      #to signup path
      render :new
    end
  end
  

  def show 
    @users = User.all
    @user = User.find(params[:id])
    @friends = @user.friends 
    @friendes = @user.friendes 
    @not_friending = @user.not_friends
  end

  def update #to add a friend, might change this to like or something
    @user = User.find(params[:id])
    User.find_by(user_params).friends << @user
    redirect_to '/users/#{@user.id}'
  end


  

  private

  def user_params
    params.require(:user).permit(:name, :age, :bio, :food_choice, :love_choice, :password, :password_confirmation)
  end
  
end
