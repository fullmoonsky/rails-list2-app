require "application_system_test_case"

class ContentRatingsTest < ApplicationSystemTestCase
  setup do
    @content_rating = content_ratings(:one)
  end

  test "visiting the index" do
    visit content_ratings_url
    assert_selector "h1", text: "Content Ratings"
  end

  test "creating a Content rating" do
    visit content_ratings_url
    click_on "New Content Rating"

    fill_in "Rating", with: @content_rating.rating
    click_on "Create Content rating"

    assert_text "Content rating was successfully created"
    click_on "Back"
  end

  test "updating a Content rating" do
    visit content_ratings_url
    click_on "Edit", match: :first

    fill_in "Rating", with: @content_rating.rating
    click_on "Update Content rating"

    assert_text "Content rating was successfully updated"
    click_on "Back"
  end

  test "destroying a Content rating" do
    visit content_ratings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Content rating was successfully destroyed"
  end
end
