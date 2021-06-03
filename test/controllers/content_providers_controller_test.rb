require "test_helper"

class ContentProvidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @content_provider = content_providers(:one)
  end

  test "should get index" do
    get content_providers_url
    assert_response :success
  end

  test "should get new" do
    get new_content_provider_url
    assert_response :success
  end

  test "should create content_provider" do
    assert_difference('ContentProvider.count') do
      post content_providers_url, params: { content_provider: { name: @content_provider.name, thumbnail_image: @content_provider.thumbnail_image } }
    end

    assert_redirected_to content_provider_url(ContentProvider.last)
  end

  test "should show content_provider" do
    get content_provider_url(@content_provider)
    assert_response :success
  end

  test "should get edit" do
    get edit_content_provider_url(@content_provider)
    assert_response :success
  end

  test "should update content_provider" do
    patch content_provider_url(@content_provider), params: { content_provider: { name: @content_provider.name, thumbnail_image: @content_provider.thumbnail_image } }
    assert_redirected_to content_provider_url(@content_provider)
  end

  test "should destroy content_provider" do
    assert_difference('ContentProvider.count', -1) do
      delete content_provider_url(@content_provider)
    end

    assert_redirected_to content_providers_url
  end
end
