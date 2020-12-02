class PostsController < ApplicationController

    def index
      @posts = Post.all
    end
    
    def new
        @post = Post.new
    end

    def list
      @posts = Post.all
    end

    def arm
      @posts = Post.all
    end

    def leg
      @posts = Post.all
    end

    def fukkin
      @posts = Post.all
    end

    def create
      @post = Post.create(post_params)
      if @post.save
        redirect_to controller: :posts, action: :index
      else
        render "new"
      end
    end

    def show
      @post = Post.find(params[:id])
    end

    def edit
      @post = Post.find(params[:id])
    end

    def update
      post = Post.find(params[:id])
      post.update(post_params)
    end

    def destroy
      post = Post.find(params[:id])
      post.destroy
    end
  
  
    private
    def post_params
      params.require(:post).permit(:name, :category_id, :message, :image)
    end
end
