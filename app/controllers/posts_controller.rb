class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

    def index
      @posts = Post.all
    end
    
    def new
        @post = Post.new
    end

    def list
      @posts = Post.all.includes(:user).order("created_at DESC")
    end

    def arm
      @posts = Post.where(category_id: 2)
    end

    def leg
      @posts = Post.where(category_id: 3)
    end

    def fukkin
      @posts = Post.where(category_id: 4)

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
      @nickname = current_user.nickname
      @posts = current_user.posts
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
      params.require(:post).permit(:category_id, :message, :image).merge(user_id: current_user.id)
    end

    def move_to_index
      unless user_signed_in?
        redirect_to  '/users/sign_in'
      end
    end
end
