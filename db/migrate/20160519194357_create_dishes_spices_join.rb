class CreateDishesSpicesJoin < ActiveRecord::Migration
  def up
    create_table :dishes_spices, :id => false do |t|
    	t.integer "dish_id"
    	t.integer "spice_id"
    end
    add_index :dishes_spices, ["dish_id", "spice_id"]
  end

  def down
  	drop_table :dishes_spices
  end
end