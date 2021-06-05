require "test_helper"

class StrainWinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @strain_wine = strain_wines(:one)
  end

  test "should get index" do
    get strain_wines_url
    assert_response :success
  end

  test "should get new" do
    get new_strain_wine_url
    assert_response :success
  end

  test "should create strain_wine" do
    assert_difference('StrainWine.count') do
      post strain_wines_url, params: { strain_wine: {  } }
    end

    assert_redirected_to strain_wine_url(StrainWine.last)
  end

  test "should show strain_wine" do
    get strain_wine_url(@strain_wine)
    assert_response :success
  end

  test "should get edit" do
    get edit_strain_wine_url(@strain_wine)
    assert_response :success
  end

  test "should update strain_wine" do
    patch strain_wine_url(@strain_wine), params: { strain_wine: {  } }
    assert_redirected_to strain_wine_url(@strain_wine)
  end

  test "should destroy strain_wine" do
    assert_difference('StrainWine.count', -1) do
      delete strain_wine_url(@strain_wine)
    end

    assert_redirected_to strain_wines_url
  end
end
