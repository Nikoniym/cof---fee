class ContactsController < ApplicationController
	def index
		@con = ContactPage.find_by_id(1)
		@contacts = Contact.all
	end
end
