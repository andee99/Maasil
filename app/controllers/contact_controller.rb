class ContactController < ApplicationController
skip_before_action :verify_authenticity_token
	def mail
		user = params[:user]
		if ContactMailer.envoie(user).deliver_now
			redirect_to root_path
		else
			render "contact"
		end
	end

end
