
class User < ActiveRecord::Base
	validates :username, uniqueness: true, presence: true
	validates :email, format: { with: /\w+[@]\w+[.]\w\w+/ }, presence: true
	validates :password, format: { with: /\w+[^ ]/ }, uniqueness: true, presence: true
	has_secure_password
	has_many :tweet
	has_many :follower

end