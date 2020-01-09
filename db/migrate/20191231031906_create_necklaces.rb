class CreateNecklaces < ActiveRecord::Migration[5.0]
  def change
    create_table :necklaces do |t|
      t.string  :size
      t.string  :color
      t.integer :price
      t.text    :explain
      t.string  :image
      t.timestamps
    end
  end
end
