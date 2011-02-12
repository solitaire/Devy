class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_projects

  private
  def load_projects
    @projects = Project.find(:all)
  end
end
