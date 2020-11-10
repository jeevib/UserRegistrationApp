class SessionsController < ApplicationController

	def create
	  	user = User.find_by_email(params[:email])
	  	if user && user.authenticate(params[:password])
	  		session[:user_id] = user.id
	  		render nothing: true
	  	else
	  		flash[:alert] = "Email or password is invalid" 
	  		render 'login'
	  	end
	end
end
