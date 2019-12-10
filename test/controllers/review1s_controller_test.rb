require 'test_helper'

class Review1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review1 = review1s(:one)
  end

  test "should get index" do
    get review1s_url
    assert_response :success
  end

  test "should get new" do
    get new_review1_url
    assert_response :success
  end

  test "should create review1" do
    assert_difference('Review1.count') do
      post review1s_url, params: { review1: { comment: @review1.comment, rating: @review1.rating } }
    end

    assert_redirected_to review1_url(Review1.last)
  end

  test "should show review1" do
    get review1_url(@review1)
    assert_response :success
  end

  test "should get edit" do
    get edit_review1_url(@review1)
    assert_response :success
  end

  test "should update review1" do
    patch review1_url(@review1), params: { review1: { comment: @review1.comment, rating: @review1.rating } }
    assert_redirected_to review1_url(@review1)
  end

  test "should destroy review1" do
    assert_difference('Review1.count', -1) do
      delete review1_url(@review1)
    end

    assert_redirected_to review1s_url
  end
end
