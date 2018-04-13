class Project < ApplicationRecord
	belongs_to :user
	has_many :funds
	has_many :wishlist
	has_many :promise
	has_one :category
	validates :title, presence: true
	validates :info, presence: true
	validates :goal, numericality: {greater_than_or_equal_to: 0}
	validates :daystogo, numericality: {greater_than_or_equal_to: 0}

end
