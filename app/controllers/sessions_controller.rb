class SessionsController < ApplicationController
    def create
	    user = User.find_by(username: params[:username])
	    # in User model, find matching username
	    session[:user_id] = user.id
	    # set session user_id to user.id of username
	    render json: user
	    # render user
	end

    def destroy
		session.delete :user_id
		# delete the session
		head :no_content
		# return nothing
	end

end
