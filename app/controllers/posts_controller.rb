class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC") #allは省略可能
  end

  #def new
  #end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end
