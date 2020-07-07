class Thema < ActiveRecord::Base
  belongs_to :category, optional: true
  has_many :sort_objects, through: :object_themas
  has_many :object_themas
end