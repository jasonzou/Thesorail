require 'test_helper'

class CountryCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @country_code = country_codes(:one)
  end

  test "should get index" do
    get country_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_country_code_url
    assert_response :success
  end

  test "should create country_code" do
    assert_difference('CountryCode.count') do
      post country_codes_url, params: { country_code: { country_code: @country_code.country_code, country_id: @country_code.country_id, country_name: @country_code.country_name } }
    end

    assert_redirected_to country_code_url(CountryCode.last)
  end

  test "should show country_code" do
    get country_code_url(@country_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_country_code_url(@country_code)
    assert_response :success
  end

  test "should update country_code" do
    patch country_code_url(@country_code), params: { country_code: { country_code: @country_code.country_code, country_id: @country_code.country_id, country_name: @country_code.country_name } }
    assert_redirected_to country_code_url(@country_code)
  end

  test "should destroy country_code" do
    assert_difference('CountryCode.count', -1) do
      delete country_code_url(@country_code)
    end

    assert_redirected_to country_codes_url
  end
end
