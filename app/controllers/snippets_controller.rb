class SnippetsController < PostsController
  def index
    @snippets = Snippet.all
  end

  def show
    @snippet = Snippet.find(params[:id])
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new(params[:snippet])
    if params[:project_id]
      @snippet.project_id = params[:project_id]
    end
    respond_to do |format|
      if @snippet.save
        if @project
          format.html { redirect_to(@project, :notice => 'New snippet was created') }
        else
          format.html { redirect_to(@snippet, :notice => 'New snippet was created') }
        end
        format.js
      else
       format.html { render :action => "new" }
      end
    end
  end

  def edit
    @snippet = Snippet.find(params[:id])
  end

  def update
    @snippet = Snippet.find(params[:id])
    if @snippet.update_attributes(params[:snippet])
      if @project
        redirect_to(@project, :notice => 'Snippet was successfully updated.')
      else
        redirect_to(@snippet, :notice => 'Snippet was successfully updated.')
      end
    else
      render :action => "edit"
    end
  end

  def destroy
    @snippet = Snippet.find(params[:id])
    @snippet.destroy
    redirect_to posts_path
  end
end

