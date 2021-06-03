require "application_system_test_case"

class AssetsTest < ApplicationSystemTestCase
  setup do
    @asset = assets(:one)
  end

  test "visiting the index" do
    visit assets_url
    assert_selector "h1", text: "Assets"
  end

  test "creating a Asset" do
    visit assets_url
    click_on "New Asset"

    fill_in "Community rating", with: @asset.community_rating
    fill_in "Content rating", with: @asset.content_rating
    fill_in "Content type", with: @asset.content_type
    fill_in "Description", with: @asset.description
    fill_in "Duration", with: @asset.duration
    fill_in "File name", with: @asset.file_name
    fill_in "Pdp", with: @asset.pdp_id
    fill_in "Thumbnail image", with: @asset.thumbnail_image
    fill_in "Title", with: @asset.title
    fill_in "Title long", with: @asset.title_long
    click_on "Create Asset"

    assert_text "Asset was successfully created"
    click_on "Back"
  end

  test "updating a Asset" do
    visit assets_url
    click_on "Edit", match: :first

    fill_in "Community rating", with: @asset.community_rating
    fill_in "Content rating", with: @asset.content_rating
    fill_in "Content type", with: @asset.content_type
    fill_in "Description", with: @asset.description
    fill_in "Duration", with: @asset.duration
    fill_in "File name", with: @asset.file_name
    fill_in "Pdp", with: @asset.pdp_id
    fill_in "Thumbnail image", with: @asset.thumbnail_image
    fill_in "Title", with: @asset.title
    fill_in "Title long", with: @asset.title_long
    click_on "Update Asset"

    assert_text "Asset was successfully updated"
    click_on "Back"
  end

  test "destroying a Asset" do
    visit assets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asset was successfully destroyed"
  end
end
