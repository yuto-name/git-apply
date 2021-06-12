class CommentsController < ApplicationController
    
    def index
       @comments = Comment.all.uniq
    end
    
    def new
       @comment = Comment.new 
    end
    
    def create
     Comment.create(comment_params)
     redirect_to action: :index
    end
    
    private
    def comment_params
        params.require(:comment).permit(:question).merge(user_id: current_user.id)
    end
end
