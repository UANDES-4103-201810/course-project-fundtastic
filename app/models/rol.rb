class Rol < ApplicationRecord
	has_one :user
	validates :rol, presence :true
end
