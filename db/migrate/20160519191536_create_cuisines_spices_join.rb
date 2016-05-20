class CreateCuisinesSpicesJoin < ActiveRecord::Migration
  def up
    create_table :cuisines_spices, :id => false do |t|
    	t.integer "cuisine_id"
    	t.integer "spice_id"
    end
    add_index :cuisines_spices, ["cuisine_id", "spice_id"]
  end

  def down
  	drop_table :cuisines_spices
  end
end