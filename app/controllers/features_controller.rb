class FeaturesController < ApplicationController
  before_filter :find_project

  def index
    @features = @project.features
  end

  def show
    @feature = Feature.find(params[:id])
  end

  def new
    @feature = Feature.new
  end

  def create
    @feature = @project.features.build(params[:feature])
    if @feature.save
      redirect_to @project, :notice => "New feature created"
    else
      render :action => "new"
    end
  end

  def edit
    @feature = Feature.find(params[:id])
  end

  def update
    @feature = Feature.find(params[:id])
    if @feature.update_attributes(params[:feature])
      redirect_to(@project, :notice => 'Feature was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
  	@feature = Feature.find(params[:id])
  	@feature.destroy
  	redirect_to @project
  end
  
  protected
  def find_project
    @project = Project.find(params[:project_id])
  end
end

