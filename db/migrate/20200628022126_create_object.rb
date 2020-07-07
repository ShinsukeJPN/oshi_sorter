class CreateObject < ActiveRecord::Migration[6.0]
  def change
    create_table :objects do |t|
      t.string :name
      t.string :kana_name
      t.string :image
    end
  end
end
