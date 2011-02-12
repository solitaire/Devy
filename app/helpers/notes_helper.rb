module NotesHelper
  
  def path_for_note(note)
    if note.project
      project_note_path(note.project, note)
    else
      note_path(note)
    end
  end
  
    def edit_path_for_note(note)
    if note.project
      edit_project_note_path(note.project, note)
    else
      edit_note_path(note)
    end
  end
  
end
