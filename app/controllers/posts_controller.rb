class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		#  When you pass the :show argument to the resources method, 
		# it will automatically create the show route 
		# the show route will assume that you will need to pass the id into the URL string
		# Whenever you have id parameters listed in the path like this, 
		# you will need to pass the route helper method an ID
		@post = Post.find(params[:id])
	end
end