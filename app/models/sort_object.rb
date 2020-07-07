class SortObject < ActiveRecord::Base
  mount_uploader :image, AvatarUploader
  has_many :themas, through: :object_themas
  has_many :object_themas
  scope :search_by_kana_name, ->(name) { where('kana_name LIKE ?',  "%#{name}%") }
end