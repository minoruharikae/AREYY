class CreateBrecelets < ActiveRecord::Migration[5.0]
  def change
    create_table :brecelets do |t|
      t.string  :size
      t.string  :color
      t.integer :price
      t.text    :explain
      t.string  :image
      t.timestamps
    end
  end
end
