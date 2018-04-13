class UserPromise < ApplicationRecord
	belongs_to :user
	belongs_to :promise
	validates :stagemail, presence: true
	validates :stageaprove, presence: true
	validates :stagereceive, presence: true
end
