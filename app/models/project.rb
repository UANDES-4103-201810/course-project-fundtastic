class Project < ApplicationRecord
	belongs_to :user
	has_many :funds,:dependent => :destroy
	has_many :wishlists ,:dependent => :destroy
	has_many :promises ,:dependent => :destroy
	has_many :project_categories ,:dependent => :destroy
	has_many :categories, :through => :project_categories
	has_attached_file :image ,  styles: { medium: "200x200>", big: "500x500" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	validates :title, presence: true
	validates :info, presence: true
	validates :goal, numericality: {greater_than_or_equal_to: 0}
	validates :daystogo, numericality: {greater_than_or_equal_to: 0}
	def self.search(search)
		if search
			where(["title LIKE ?", "%#{search}%"])
		else
			all
		end
	end
end
