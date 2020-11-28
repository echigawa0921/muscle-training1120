class PostsController < ApplicationController
    def index
      @posts = Post.all
    end
    
    def new
        @post = Post.new
    end

    def create
      @post = Post.new(items_params)
      if @post.save
          redirect_to controller: :posts, action: :index
      else
          render "new"
      end
  end

  private

  def items_params
    params.require(:post).permit(:name, :category_id, :message)
  end
end
