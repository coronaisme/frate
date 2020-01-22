class ReviewsController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

end
