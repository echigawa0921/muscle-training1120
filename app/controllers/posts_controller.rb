class PostsController < ApplicationController
    def index
      @posts = Post.all
    end
    
    def new
        @post = Post.new
    end

    def index2
      @posts = Post.all
    end

end
