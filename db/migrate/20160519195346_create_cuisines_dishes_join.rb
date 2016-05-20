class CreateCuisinesDishesJoin < ActiveRecord::Migration
  def up
    create_table :cuisines_dishes, :id => false do |t|
    	t.integer "cuisine_id"
    	t.integer "dish_id"
    end
    add_index :cuisines_dishes, ["cuisine_id", "dish_id"]
  end

  def down
  	drop_table :cuisines_dishes
  end
end