class User < ApplicationRecord
	validates :name, presence: true
	validates :email_address, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
end