class User < ApplicationRecord
	has_one :rol
	has_many :project
	has_many :fund
	has_many :user_promise
	has_one :wishlist
	validates :name, presence: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Error" }
	validates :email, uniqueness: true
	validates :password, length: { in: 8..12 }
end
