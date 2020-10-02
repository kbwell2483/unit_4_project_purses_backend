require 'test_helper'

class PursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purse = purses(:one)
  end

  test "should get index" do
    get purses_url, as: :json
    assert_response :success
  end

  test "should create purse" do
    assert_difference('Purse.count') do
      post purses_url, params: { purse: { brand: @purse.brand, description: @purse.description, name: @purse.name, price: @purse.price } }, as: :json
    end

    assert_response 201
  end

  test "should show purse" do
    get purse_url(@purse), as: :json
    assert_response :success
  end

  test "should update purse" do
    patch purse_url(@purse), params: { purse: { brand: @purse.brand, description: @purse.description, name: @purse.name, price: @purse.price } }, as: :json
    assert_response 200
  end

  test "should destroy purse" do
    assert_difference('Purse.count', -1) do
      delete purse_url(@purse), as: :json
    end

    assert_response 204
  end
end
