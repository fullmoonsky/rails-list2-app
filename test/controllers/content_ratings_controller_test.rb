require "test_helper"

class ContentRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @content_rating = content_ratings(:one)
  end

  test "should get index" do
    get content_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_content_rating_url
    assert_response :success
  end

  test "should create content_rating" do
    assert_difference('ContentRating.count') do
      post content_ratings_url, params: { content_rating: { rating: @content_rating.rating } }
    end

    assert_redirected_to content_rating_url(ContentRating.last)
  end

  test "should show content_rating" do
    get content_rating_url(@content_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_content_rating_url(@content_rating)
    assert_response :success
  end

  test "should update content_rating" do
    patch content_rating_url(@content_rating), params: { content_rating: { rating: @content_rating.rating } }
    assert_redirected_to content_rating_url(@content_rating)
  end

  test "should destroy content_rating" do
    assert_difference('ContentRating.count', -1) do
      delete content_rating_url(@content_rating)
    end

    assert_redirected_to content_ratings_url
  end
end
