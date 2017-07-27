class OrganizatorsController < ApplicationController
  def index
  	@org = AboutPage.find_by_id(1)
  end
end
