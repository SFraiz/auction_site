class Product < ApplicationRecord
	belongs_to :user
	
	validates :title, presence: true
	validates :description, presence: true
	validates :biding_deadline, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 } 
end