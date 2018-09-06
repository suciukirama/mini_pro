class PagesController < ApplicationController

	before_action :confirm_logged_in, only:[ :index]
	
	def index

	@post_blog = PostBlog.all
		
	end

	def home
	end

	def about

	end

	def page

	end

	def user
	end

	def blog_post
	end
	
end
