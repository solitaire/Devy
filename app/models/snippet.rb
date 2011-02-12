class Snippet < Post
  validates :body, :presence => true
  acts_as_taggable
end
