class PostsController < ApplicationController
  def new
    @post = @blog.new_post
  end
  
  # GET /post/1
  # GET /post/1.json
  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end
  
  def create
    @post = @blog.new_post(params.require(:post).permit(:title, :body, :image_url))
    if @post.publish
      redirect_to post_url(@post), error: "Pay attention to the road"
    else
      flash.now[:error] = "Whoops, the highlighted fields need better input."
      render action: "new"
    end
  end
end