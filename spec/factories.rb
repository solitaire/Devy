Factory.define :note do |note|
  note.title "My note"
  note.body  "Content of my note"
  note.association :project
end

Factory.define :snippet do |snippet|
  snippet.body "Some code"
  snippet.association :project
end

Factory.define :project do |project|
  project.name "Project name"
  project.status "Done"
  project.description "Description"
end

Factory.define :feature do |feature|
  feature.name
  feature.description
  feature.status
  feature.association :project, :factory => :project
end