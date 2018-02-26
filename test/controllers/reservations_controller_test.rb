require 'test_helper'

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get step1" do
    get reservations_step1_url
    assert_response :success
  end

end
