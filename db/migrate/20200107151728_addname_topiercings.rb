class AddnameTopiercings < ActiveRecord::Migration[5.0]
  def change
    add_column :piercings, :name, :string, :null => false
  end
end
