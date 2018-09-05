require "application_system_test_case"

class User3sTest < ApplicationSystemTestCase
  setup do
    @user3 = user3s(:one)
  end

  test "visiting the index" do
    visit user3s_url
    assert_selector "h1", text: "User3s"
  end

  test "creating a User3" do
    visit user3s_url
    click_on "New User3"

    fill_in "Email", with: @user3.email
    fill_in "Id", with: @user3.id
    fill_in "Name", with: @user3.name
    click_on "Create User3"

    assert_text "User3 was successfully created"
    click_on "Back"
  end

  test "updating a User3" do
    visit user3s_url
    click_on "Edit", match: :first

    fill_in "Email", with: @user3.email
    fill_in "Id", with: @user3.id
    fill_in "Name", with: @user3.name
    click_on "Update User3"

    assert_text "User3 was successfully updated"
    click_on "Back"
  end

  test "destroying a User3" do
    visit user3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User3 was successfully destroyed"
  end
end
