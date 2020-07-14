class Thema < ActiveRecord::Base
  belongs_to :category, optional: true
  has_many :sort_object_themas
  has_many :sort_objects, through: :sort_object_themas
  accepts_nested_attributes_for :sort_object_themas
end
