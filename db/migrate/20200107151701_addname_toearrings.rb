class AddnameToearrings < ActiveRecord::Migration[5.0]
  def change
    add_column :earrings, :name, :string, :null => false
  end
end
