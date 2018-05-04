class Project < ApplicationRecord
	belongs_to :user
	has_many :funds
	has_many :wishlists
	has_many :promises
	has_many :project_categories
	has_many :categories, :through => :project_categories
	validates :title, presence: true
	validates :info, presence: true
	validates :goal, numericality: {greater_than_or_equal_to: 0}
	validates :daystogo, numericality: {greater_than_or_equal_to: 0}

end
