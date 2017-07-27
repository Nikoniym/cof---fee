class SubMailer < ApplicationMailer
	def sub(subscription)
		@sub = subscription
		mail to: Link.first.email, subject: 'article'

	end
end
