class Spice < ActiveRecord::Base

	has_and_belongs_to_many :cuisines
	has_and_belongs_to_many :dishes
end
