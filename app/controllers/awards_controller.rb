class AwardsController < ApplicationController
	def index

		@awardpage = AwardPage.find_by_id(1)
		@awards = Award.order(num: :asc).includes(:winners)
		#@win = Award.find(1).winners
		
	end
end
