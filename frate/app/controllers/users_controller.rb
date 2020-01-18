class UsersController < ApplicationController
  def index 
    @users = User.all
  end

  def new 
    @user = User.new 
  end

  def create 
    @user = User.new(user_params)
    if @user.save 
      redirect_to @user 
    else 
      render :new
    end
  end

  def show 
    @user = User.find(params[:id])
    @friends = @user.friends 
    @friendes = @user.friendes 
    #@not_friending = @user.not_friending
  end

  def update
    @user = User.find(params[:id])
    User.find_by(user_params).followers << @user
    redirect_to '/users/#{@user.id}'
  end


  private

  def user_params
    params.require(:user).permit(:name, :age, :bio, :food_choice, :love_choice)
  end
  
end
