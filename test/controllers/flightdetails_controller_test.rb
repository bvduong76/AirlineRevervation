require 'test_helper'

class FlightdetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flightdetail = flightdetails(:one)
  end

  test "should get index" do
    get flightdetails_url
    assert_response :success
  end

  test "should get new" do
    get new_flightdetail_url
    assert_response :success
  end

  test "should create flightdetail" do
    assert_difference('Flightdetail.count') do
      post flightdetails_url, params: { flightdetail: { booking: @flightdetail.booking, flight: @flightdetail.flight } }
    end

    assert_redirected_to flightdetail_url(Flightdetail.last)
  end

  test "should show flightdetail" do
    get flightdetail_url(@flightdetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_flightdetail_url(@flightdetail)
    assert_response :success
  end

  test "should update flightdetail" do
    patch flightdetail_url(@flightdetail), params: { flightdetail: { booking: @flightdetail.booking, flight: @flightdetail.flight } }
    assert_redirected_to flightdetail_url(@flightdetail)
  end

  test "should destroy flightdetail" do
    assert_difference('Flightdetail.count', -1) do
      delete flightdetail_url(@flightdetail)
    end

    assert_redirected_to flightdetails_url
  end
end
