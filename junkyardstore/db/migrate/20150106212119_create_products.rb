class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.string :photo
      t.string :length
      t.string :width
      t.string :depth
      t.string :quantity
      t.string :year
      t.string :make
      t.string :model
      t.string :color
      t.string :description

      t.timestamps
    end
  end
end
