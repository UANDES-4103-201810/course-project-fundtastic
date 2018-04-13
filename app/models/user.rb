class User < ApplicationRecord
	has_one :rol
	has_many :project
	has_many :fund
	has_many :user_promise
	has_one :wishlist
	validates :name, presence: true
	validates :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
	validates :email, uniqueness: true
	validates :email, presence: true
	validates :password, length: { in: 8..12 }
	validates :password, presence: true
end
