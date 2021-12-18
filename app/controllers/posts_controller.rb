class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC") #allは省略可能
  end

  #def new
  #end

  def create
    post = Post.create(content: params[:content])
    render json:{ post: post }
  end
end
