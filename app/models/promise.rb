class Promise < ApplicationRecord
	belongs_to :project
	has_many :user_promise
	validates :price, numericality: {greater_than_or_equal_to: 0}
	validates :title, presence: true
	#validates :date, presence: true
	validates :info, presence: true

end
