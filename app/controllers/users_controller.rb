class UsersController < ApplicationController
	
	def home
		@users = User.all
	end
	
	def new
		@user = User.new
	end
	
	def create
		user = User.new(
			name: params[:user][:name],
			email_address: params[:user][:email_address])
    	if user.save
			redirect_to '/users'
		else
			render 'new'
		end
	end
	
	def users
		render 'index'
	end

	def show
		@user = User.find(params[:id])
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to '/'
	end
end