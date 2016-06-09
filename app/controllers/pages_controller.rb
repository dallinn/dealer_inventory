class PagesController < ApplicationController
	def home
		@posts = Post.last(3)
	end
	def about		
	end
	def contact		
	end
	def all
		@posts = Post.all
	end
end
