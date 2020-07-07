class CreateObjectThema < ActiveRecord::Migration[6.0]
  def change
    create_table :object_themas do |t|
      t.integer :object_id
      t.integer :thema_id
    end
  end
end
