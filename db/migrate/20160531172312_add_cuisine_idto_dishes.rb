class AddCuisineIdtoDishes < ActiveRecord::Migration
  def up
  	add_column :dishes, :cuisine_id, :integer
  end

  def down
  	remove_column :dishes, :cuisine_id
  end
end
