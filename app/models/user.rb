class User < ApplicationRecord

	has_secure_password
	has_many :post_blogs
	validates :name, presence: true
	validates :email, presence: true
	validates_presence_of :name
	validates_length_of :name, :maximum => 255
	validates_presence_of :email
	validates_length_of :email, :maximum => 255
	validates :email, uniqueness: true
	
end
