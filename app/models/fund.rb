class Fund < ApplicationRecord
	belongs_to :user
	belongs_to :project
	validates :stagemail, presence: true
	validates :stageaprove, presence: true
	validates :stagereceive, presence: true
end

