class ProductsController < ApplicationController
    
    def index
            @products = Product.order("created_at DESC").page(params[:page]).per(9)
            
            ids = Product.group(:user_id).order('count_user_id DESC').limit(5).count(:user_id).keys
            @user = ids.map{ |id| Product.find(id)}
    end
    
    def search
     @search = Product.search(params[:keyword]).page(params[:page]).per(2)
        @products = Product.order("created_at DESC").page(params[:page]).per(9)
            
            ids = Product.group(:user_id).order('count_user_id DESC').limit(5).count(:user_id).keys
            @user = ids.map{ |id| Product.find(id)}
    end
end
