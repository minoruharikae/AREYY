class AddnameTorings < ActiveRecord::Migration[5.0]
  def change
    add_column :rings, :name, :string, :null => false
  end
end
