class Dish < ActiveRecord::Base

	belongs_to :cuisine
	has_and_belongs_to_many :spices
end
