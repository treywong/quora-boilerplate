class User < ActiveRecord::Base
	validates :email, format: { with: /\w+[@]\w+[.]\w\w+/ }, uniqueness: true
	validates :password, format: { with: /\w+[^ ]/ }, uniqueness: true
	has_secure_password
	has_many :question
end