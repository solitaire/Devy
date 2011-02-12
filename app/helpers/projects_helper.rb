module ProjectsHelper
  PROJECT_STATUSES = ["In progress", "Idea", "Finished"]
  FEATURE_STATUEES = ["Unimplemented", "Implemented", "In progress"]

  def select_project_status
    select("project", "status", PROJECT_STATUSES)
  end
  
  def select_feature_status
    select("feature", "status", FEATURE_STATUEES)
  end
  
  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      builder.file_field :attachment
    end
    link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
  end
end
