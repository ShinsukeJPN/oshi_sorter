class CreateSortObject < ActiveRecord::Migration[6.0]
  def change
    create_table :sort_objects do |t|
      t.string :name
      t.string :kana_name
      t.string :image
    end
  end
end
