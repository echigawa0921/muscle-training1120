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
end
