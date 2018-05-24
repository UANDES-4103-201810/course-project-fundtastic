class Promise < ApplicationRecord
	belongs_to :project
	has_many :user_promises
	has_attached_file :image ,  styles: { medium: "200x200>", big: "500x500" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	validates :price, numericality: {greater_than_or_equal_to: 0}
	validates :title, presence: true
	validates :date, presence: true
	validates :info, presence: true

end
