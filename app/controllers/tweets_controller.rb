class TweetsController < ApplicationController
    
    
    def new
       @tweet = Tweet.new
       @product = Product.find(params[:product_id])
    end
    
    def create
       Tweet.create(tweet_params) 
    end
    
    
    private
def tweet_params
    params.require(:tweet).permit(:rate, :comment).merge(user_id: current_user.id, product_id: params[:product_id])
end
end
