class User < ApplicationRecord
	has_one :rol
	has_many :project
	has_many :fund
	has_many :user_promise
	has_one :wishlist
end
