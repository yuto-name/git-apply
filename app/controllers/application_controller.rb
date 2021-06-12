class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_in, keys: [:nickname, :image])
    end
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :image])
    end
    
    def search(search)
        if Reviews.search(search)
           Review.where(['product LIKE(?) OR place LIKE(?) OR details LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%"])
        elsif Products.search(search)
            Product.where(['name LIKE(?) OR store LIKE(?) OR details LIke(?), category LIKE(?)',"%#{search}%","%#{search}%","%#{search}%","%#{search}%"])
        elsif User.search(search)
            User.where(['nickname LIKE(?)',"%#{search}%"])
        end
    end
end
