class Product < ApplicationRecord
	validate :title, present: true
	validate :description, present: true
	validate :bidding_deadline, present: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 } 
end
