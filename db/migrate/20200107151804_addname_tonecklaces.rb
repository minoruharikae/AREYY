class AddnameTonecklaces < ActiveRecord::Migration[5.0]
  def change
    add_column :necklaces, :name, :string, :null => false
  end
end
