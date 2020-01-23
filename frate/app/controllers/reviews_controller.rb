class ReviewsController < ApplicationController

    def index  #all reviews associated with a certain user
        @reviews = Review.all
        @user = User.find(params[:user_id])
        
    end

    def show # a single review? How/why do we want this
        @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
    end

    #save with strong params ?
    def create 
        # binding.pry
        reviewer_id = session[:user_id]
        reviewee_id = params[:id]
        content = params[:content]
        @review = Review.create!(reviewer_id: reviewer_id,
        reviewee_id: reviewee_id, content: content)
        
        if @review.save
            redirect_to "/users/#{@review.reviewee_id}/reviews"
        else 
            redirect_to '/users'
        end
    end

    private

    def review_params
        #params.require(:review).permit(:content, :reviewee_id)
    end
    
end
