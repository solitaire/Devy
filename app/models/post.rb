class Post < ActiveRecord::Base
  belongs_to :project
  acts_as_taggable 
  cattr_reader :per_page
  @@per_page = 10
end
