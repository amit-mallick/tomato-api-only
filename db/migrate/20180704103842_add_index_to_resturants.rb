class AddIndexToResturants < ActiveRecord::Migration
  def change
    add_index :resturants, :location
  end
end
