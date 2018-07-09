class CreateResturants < ActiveRecord::Migration
  def change
    create_table :resturants do |t|
      t.string :name
      t.string :location
      t.integer :price
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
