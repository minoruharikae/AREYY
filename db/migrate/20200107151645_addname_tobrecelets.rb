class AddnameTobrecelets < ActiveRecord::Migration[5.0]
  def change
    add_column :brecelets, :name, :string, :null => false
  end
end
