class ReviewsController < ApplicationController

    def new
        @review = Review.new
    end


    def show
        @user = User.find(params[:id])
    end

end
