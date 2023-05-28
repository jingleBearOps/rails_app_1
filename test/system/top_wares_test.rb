require "application_system_test_case"

class TopWaresTest < ApplicationSystemTestCase
  setup do
    @top_ware = top_wares(:one)
  end

  test "visiting the index" do
    visit top_wares_url
    assert_selector "h1", text: "Top wares"
  end

  test "should create top ware" do
    visit top_wares_url
    click_on "New top ware"

    fill_in "Description", with: @top_ware.description
    fill_in "Origin", with: @top_ware.origin
    fill_in "Price", with: @top_ware.price
    fill_in "Style", with: @top_ware.style
    click_on "Create Top ware"

    assert_text "Top ware was successfully created"
    click_on "Back"
  end

  test "should update Top ware" do
    visit top_ware_url(@top_ware)
    click_on "Edit this top ware", match: :first

    fill_in "Description", with: @top_ware.description
    fill_in "Origin", with: @top_ware.origin
    fill_in "Price", with: @top_ware.price
    fill_in "Style", with: @top_ware.style
    click_on "Update Top ware"

    assert_text "Top ware was successfully updated"
    click_on "Back"
  end

  test "should destroy Top ware" do
    visit top_ware_url(@top_ware)
    click_on "Destroy this top ware", match: :first

    assert_text "Top ware was successfully destroyed"
  end
end
