class CreateSortObjectThema < ActiveRecord::Migration[6.0]
  def change
    create_table :sort_object_themas do |t|
      t.references :sort_object, foreign_key: true
      t.references :thema, foreign_key: true
    end
  end
end
