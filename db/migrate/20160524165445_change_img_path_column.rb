class ChangeImgPathColumn < ActiveRecord::Migration
  def up
  	rename_column :cuisines, :img_path, :imgPath
  	rename_column :spices, :img_path, :imgPath
  end
end
