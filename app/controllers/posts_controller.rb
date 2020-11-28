class PostsController < ApplicationController
    def index
      @posts = Post.all
    end

    def contact
      @posts = Post
    end
    
    def new
        @post = Post.new
    end
end
