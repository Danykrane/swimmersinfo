require "application_system_test_case"

class Review1sTest < ApplicationSystemTestCase
  setup do
    @review1 = review1s(:one)
  end

  test "visiting the index" do
    visit review1s_url
    assert_selector "h1", text: "Review1s"
  end

  test "creating a Review1" do
    visit review1s_url
    click_on "New Review1"

    fill_in "Comment", with: @review1.comment
    fill_in "Rating", with: @review1.rating
    click_on "Create Review1"

    assert_text "Review1 was successfully created"
    click_on "Back"
  end

  test "updating a Review1" do
    visit review1s_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @review1.comment
    fill_in "Rating", with: @review1.rating
    click_on "Update Review1"

    assert_text "Review1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Review1" do
    visit review1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Review1 was successfully destroyed"
  end
end
