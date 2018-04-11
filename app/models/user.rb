class User < ApplicationRecord
	has_many :project
	validates :email, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
	validates :name, presence: true 
	validates :creditcard, presence: true
	validates :email, uniqueness: true
	validates :address, presence: true
	validates :password, length: {minimum: 9, maximum: 12}

end
