class CreateSpices < ActiveRecord::Migration
  def up
    create_table :spices do |t|
    	t.string "name"
    	t.string "img_path"
    	t.text "description"
      t.boolean "favorite"
	    t.timestamps null: false
    end
  end

  def down
  	drop_table :spices
  end
end
