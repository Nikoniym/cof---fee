require 'test_helper'

class OrganizatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get organizators_index_url
    assert_response :success
  end

end
