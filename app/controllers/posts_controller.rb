class PostsController < ApplicationController
  before_filter :find_project
  def index
    @posts = Post.paginate :page => params[:page]
  end
    
  protected
  def find_project
    @project = Project.find(params[:project_id]) if params[:project_id]
  end
end
