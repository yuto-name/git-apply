class ReviewsController < ApplicationController
    
    def index
        @reviews = Review.all 
    end
    
    def new
        @review = Review.new
    end
    
    def create
        Review.create(review_params)
        redirect_to :root
    end
    
    def edit
        @review = Review.find(params[:id])
    end
    
    def update
    review = Review.find(params[:id]) 
       if review.user_id == current_user.id
          review.update(review_params)
       end 
    end
    
    def destroy
       review = Review.find(params[:id])
       if review.user_id = current_user.id
           review.destroy
       end
       redirect_to action: :show, controller: :users
    end
    
    private
    def review_params
        params.require(:review).permit(:place, :details, :product, :image).merge(user_id: current_user.id)
         
    end
end
