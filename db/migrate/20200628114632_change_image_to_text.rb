class ChangeImageToText < ActiveRecord::Migration[6.0]
  def up
    change_column :sort_objects, :image, :text
  end

  def down
    change_column :sort_objects, :image, :string
  end
end
