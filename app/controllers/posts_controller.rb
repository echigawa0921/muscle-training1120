class PostsController < ApplicationController
    def index
      @posts = Post.all
    end

    def contact index
    end
    
    def new
        @post = Post.new
    end
end
