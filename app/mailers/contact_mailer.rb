class ContactMailer < ApplicationMailer

	def envoie(contact)
		@contact = contact
		mail(:to => "admin@maasil.fr", :from => @contact[:email])
		
	end

end
