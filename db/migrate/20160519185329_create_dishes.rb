class CreateDishes < ActiveRecord::Migration
  def up
    create_table :dishes do |t|
    	t.string "name"
     	t.timestamps null: false
    end
  end

  def down
  	drop_table :dishes
  end
end
