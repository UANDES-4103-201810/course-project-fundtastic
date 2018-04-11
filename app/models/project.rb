class Project < ApplicationRecord
	has_many:user
	validates :title, presence: true
	validates :description, presence: true
	validates :cost, presence: true
	validates :daytogo, presence: true


end

