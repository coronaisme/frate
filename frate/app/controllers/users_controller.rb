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
    @review = Review.new
  end

  def edit
    @user = User.find(params[:id])
    # @user.avatar.attach(params[:avatar])
  end

  def add_friend 
    @user = User.find(params[:id])
    User.find_by(user_params).friends << @user
    redirect_to @user
  end

  def update 
    @user = User.find(params[:id])
   if  @user.update(user_params)
    redirect_to @user
   else
    render :edit
   end
  end

  

  def add_friend_profile
    @user = User.find(params[:id])
    @current_user.friendes << @user
    # @current_user.friends << @user  --- this adds current user as a friend to user which we dont neccesarily want
    redirect_to @user
  end

  
 #working on this now

  # def delete_friendship
  #   @user = User.find(params[:id])
  #   @current_user.friendes.destroy
  #   redirect_to current_user
  # end



  def destroy
    @current_user.destroy
    session[:user_id] = nil
    redirect_to '/homes/home_page'
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :age, :bio, :food_choice, :love_choice, :avatar, :password, :password_confirmation)
  end
  
end