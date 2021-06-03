require "application_system_test_case"

class ContentProvidersTest < ApplicationSystemTestCase
  setup do
    @content_provider = content_providers(:one)
  end

  test "visiting the index" do
    visit content_providers_url
    assert_selector "h1", text: "Content Providers"
  end

  test "creating a Content provider" do
    visit content_providers_url
    click_on "New Content Provider"

    fill_in "Name", with: @content_provider.name
    fill_in "Thumbnail image", with: @content_provider.thumbnail_image
    click_on "Create Content provider"

    assert_text "Content provider was successfully created"
    click_on "Back"
  end

  test "updating a Content provider" do
    visit content_providers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @content_provider.name
    fill_in "Thumbnail image", with: @content_provider.thumbnail_image
    click_on "Update Content provider"

    assert_text "Content provider was successfully updated"
    click_on "Back"
  end

  test "destroying a Content provider" do
    visit content_providers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Content provider was successfully destroyed"
  end
end
