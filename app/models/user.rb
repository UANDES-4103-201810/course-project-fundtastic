class User < ApplicationRecord
	has_one :rol
	has_many :project
	has_many :fund
	has_many :user_promise
	has_one :wishlist
	validates :name, presence: true
	validates :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ , message: "de nuevo"}
	validates :email, uniqueness: true
	validates :email, presence: true
	validates :password, length: { in: 8..12 }
	validates :password, format: {with: /\A[a-zA-Z0-9\.]{8,12}\z/ , message: "assword must be between 8 to 12 alphanumeric characters"}
	validates :password, presence: true
end
