class SubscriptionsController < ApplicationController
	def create
		 
    @sub = Subscription.create(sub_params)
    @sub.save
        redirect_to root_path
    SubMailer.sub(@sub).deliver_now
    	 
 
	end




	private


	def sub_params

		 params.require(:subscription).permit(:email) 
	end
end
