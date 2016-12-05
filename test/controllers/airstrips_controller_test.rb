require 'test_helper'

class AirstripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @airstrip = airstrips(:one)
  end

  test "should get index" do
    get airstrips_url
    assert_response :success
  end

  test "should get new" do
    get new_airstrip_url
    assert_response :success
  end

  test "should create airstrip" do
    assert_difference('Airstrip.count') do
      post airstrips_url, params: { airstrip: { end: @airstrip.end, start: @airstrip.start } }
    end

    assert_redirected_to airstrip_url(Airstrip.last)
  end

  test "should show airstrip" do
    get airstrip_url(@airstrip)
    assert_response :success
  end

  test "should get edit" do
    get edit_airstrip_url(@airstrip)
    assert_response :success
  end

  test "should update airstrip" do
    patch airstrip_url(@airstrip), params: { airstrip: { end: @airstrip.end, start: @airstrip.start } }
    assert_redirected_to airstrip_url(@airstrip)
  end

  test "should destroy airstrip" do
    assert_difference('Airstrip.count', -1) do
      delete airstrip_url(@airstrip)
    end

    assert_redirected_to airstrips_url
  end
end
