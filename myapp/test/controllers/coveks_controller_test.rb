require 'test_helper'

class CoveksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @covek = coveks(:one)
  end

  test "should get index" do
    get coveks_url
    assert_response :success
  end

  test "should get new" do
    get new_covek_url
    assert_response :success
  end

  test "should create covek" do
    assert_difference('Covek.count') do
      post coveks_url, params: { covek: { description: @covek.description, name: @covek.name, picture: @covek.picture } }
    end

    assert_redirected_to covek_url(Covek.last)
  end

  test "should show covek" do
    get covek_url(@covek)
    assert_response :success
  end

  test "should get edit" do
    get edit_covek_url(@covek)
    assert_response :success
  end

  test "should update covek" do
    patch covek_url(@covek), params: { covek: { description: @covek.description, name: @covek.name, picture: @covek.picture } }
    assert_redirected_to covek_url(@covek)
  end

  test "should destroy covek" do
    assert_difference('Covek.count', -1) do
      delete covek_url(@covek)
    end

    assert_redirected_to coveks_url
  end
end
