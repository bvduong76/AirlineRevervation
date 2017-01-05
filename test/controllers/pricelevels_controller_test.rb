require 'test_helper'

class PricelevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pricelevel = pricelevels(:one)
  end

  test "should get index" do
    get pricelevels_url
    assert_response :success
  end

  test "should get new" do
    get new_pricelevel_url
    assert_response :success
  end

  test "should create pricelevel" do
    assert_difference('Pricelevel.count') do
      post pricelevels_url, params: { pricelevel: { name: @pricelevel.name, price: @pricelevel.price } }
    end

    assert_redirected_to pricelevel_url(Pricelevel.last)
  end

  test "should show pricelevel" do
    get pricelevel_url(@pricelevel)
    assert_response :success
  end

  test "should get edit" do
    get edit_pricelevel_url(@pricelevel)
    assert_response :success
  end

  test "should update pricelevel" do
    patch pricelevel_url(@pricelevel), params: { pricelevel: { name: @pricelevel.name, price: @pricelevel.price } }
    assert_redirected_to pricelevel_url(@pricelevel)
  end

  test "should destroy pricelevel" do
    assert_difference('Pricelevel.count', -1) do
      delete pricelevel_url(@pricelevel)
    end

    assert_redirected_to pricelevels_url
  end
end
