class Project < ApplicationRecord
	belongs_to :user
	has_many :funds
	has_many :wishlist
	has_many :promise
	has_one :category
end
