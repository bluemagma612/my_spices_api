class CreateCuisines < ActiveRecord::Migration
  def up
    create_table :cuisines do |t|
    	t.string "name"
    	t.string "img_path"
    	t.string "description"
      t.timestamps null: false
    end
  end

  def down
  	drop_table :cuisines
  end
end
