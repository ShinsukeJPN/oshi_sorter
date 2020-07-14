class SortObject < ActiveRecord::Base
  mount_uploader :image, AvatarUploader
  has_many :sort_object_themas
  has_many :themas, through: :sort_object_themas
  scope :search_by_kana_name, ->(name) { where('kana_name LIKE ?',  "%#{name}%") }
end