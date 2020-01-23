class ReviewsController < ApplicationController

    def index  #all reviews associated with a certain user
        @reviews = Review.all
        
    end

    def show # a single review? How/why do we want this
        @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
    end

    #save with strong params ?
    def create 
        @review = Review.new(review_params)
        if @review.save
            redirect_to '/reviews'
        else 
            redirect_to '/users/4'
        end
    end

    private

    def review_params
        params.require(:review).permit(:content)
    end
    
end
