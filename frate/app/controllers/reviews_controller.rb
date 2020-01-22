class ReviewsController < ApplicationController

    def index  #all reviews associated with a ceratin user
        @review = Review.all
    end

    def show # a single review? How/why do we want this
        @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
    end

    #save with strong params ?
    def create 
        @review = Review.new 
        #if @review.save ...
    end

    
end
