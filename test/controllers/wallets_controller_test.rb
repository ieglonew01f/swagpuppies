require 'test_helper'

class WalletsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get wallets_create_url
    assert_response :success
  end

end
