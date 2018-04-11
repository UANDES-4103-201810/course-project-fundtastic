class User < ApplicationRecord
	has_many :project
	validates :email, presence: true, format:{with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
	validates :name, presence:true 
	validates :creditcard , presence:true
	validates :email, uniqueness: true
	address :address , presence: true
end
