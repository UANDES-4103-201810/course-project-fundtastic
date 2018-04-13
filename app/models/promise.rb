class Promise < ApplicationRecord
	belongs_to :project
	has_many :user_promise
end
