class NotesController < PostsController

  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(params[:note])
    if params[:project_id]
      @note.project_id = params[:project_id]
    end
    respond_to do |format|
      if @note.save
        if @project
          format.html { redirect_to(@project, :notice => 'New note was created')}
        else
          format.html { redirect_to(notes_path, :notice => 'New note was created')}
        end
        format.js
      else
       format.html { render :action => "new" }
      end
    end
  end


  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update_attributes(params[:note])
      if @project
        redirect_to(@project, :notice => 'Note was successfully updated.')
      else
        redirect_to(notes_path, :notice => 'Note was successfully updated.')
      end
    else
      render :action => "edit"
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to posts_path
  end

end

