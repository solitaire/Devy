class Project < ActiveRecord::Base

  validates :name,   :presence => true
  validates :status, :presence => true

  has_many :notes,    :dependent => :destroy
  has_many :snippets, :dependent => :destroy
  has_many :features, :dependent => :destroy
  has_many :images, :as => :assetable, :dependent => :destroy
  has_many :sources, :as => :assetable, :dependent => :destroy

  accepts_nested_attributes_for :notes
  accepts_nested_attributes_for :features
  accepts_nested_attributes_for :images, :allow_destroy => true
  accepts_nested_attributes_for :sources, :allow_destroy => true
  
  acts_as_taggable
end

