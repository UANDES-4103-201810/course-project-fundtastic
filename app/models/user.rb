class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_attached_file :avatar ,  styles: { medium: "200x200>", thumb: "50x50>#" }
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	has_one :rol
	has_many :projects
	has_many :funds
	has_many :user_promises
	has_one :wishlist
	validates :name, presence: true
	validates :email, uniqueness: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, message: "Error" }
	validates :password, length: { in: 8..12 }

	def self.search(search)
		if search
			where(["name LIKE ?", "%#{search}%"])
		else
				all
		end
	end
end
