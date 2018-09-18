
class Tweet < ActiveRecord::Base
	validates :post, length: { maximum: 140}, presence: true
	belongs_to :user
	
end