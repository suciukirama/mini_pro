class PostBlog < ApplicationRecord
	belongs_to :user
	validates :content, presence: true
	validates :summary, presence: true
	validates :title, presence: true
	validates_length_of :title, :maximum => 255
    validates_length_of :summary, :maximum => 255
end