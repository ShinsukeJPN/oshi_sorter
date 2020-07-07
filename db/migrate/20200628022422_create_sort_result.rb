class CreateSortResult < ActiveRecord::Migration[6.0]
  def change
    create_table :sort_results do |t|
      t.integer :thema_id
      t.text :result
      t.text :url
    end
  end
end
