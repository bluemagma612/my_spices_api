class Cuisine < ActiveRecord::Base

	has_and_belongs_to_many :spices
	has_many :dishes
end
