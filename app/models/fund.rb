class Fund < ApplicationRecord
	belongs_to :user
	belongs_to :project
	before_create :confirmation_token

	#validates :stagemail, presence: true
	#validates :stageaprove, presence: true
	#validates :stagereceive, presence: true
	def mail_activate
		self.fund_confirmed = true
		self.confirm_token = nil
		save!(validate => false )
	end
	private
	def confirmation_token
		if self.confirm_token.blank?
			self.confirm_token = SecureRandom.urlsafe_base64.to_s
		end
	end
end

