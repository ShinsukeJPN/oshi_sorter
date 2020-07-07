class CreateThema < ActiveRecord::Migration[6.0]
  def change
    create_table :themas do |t|
      t.string :title
      t.integer :category_id
      t.text :detail
    end
  end
end
