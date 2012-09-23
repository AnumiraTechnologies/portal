class HomeController < ApplicationController
 def index
    @post = Post.find(:all)
    @post = Post.order("created_at desc").limit(2)
  end
  
  def show
    @post = Post.find(params[:id])
    @posts = Post.find(:all, :order => "created_at DESC")
    @recent_posts = Post.all(:order => "created_at DESC")
    @posts_by_month = Post.find(:all, :order => "created_at DESC").group_by { |post| post.created_at.strftime("%B %Y")}
    @recentlist = Post.order("created_at desc").limit(3)
    @categories = Category.find(:all, :include => :posts)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
      format.xml  { render :xml => @posts }
    end   
    
  end
end
