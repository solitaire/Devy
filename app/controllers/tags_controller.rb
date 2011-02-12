class TagsController < ApplicationController
  
  def show
    @tagged_projects = Project.tagged_with(params[:id])
    @tagged_posts    = Post.tagged_with(params[:id])
  end
end

