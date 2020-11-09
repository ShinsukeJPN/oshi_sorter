class AddPasswordOnThema < ActiveRecord::Migration[6.0]
  def change
    add_column :themas, :password, :string
  end
end
