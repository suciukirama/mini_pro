require "application_system_test_case"

class PostBlogsTest < ApplicationSystemTestCase
  setup do
    @post_blog = post_blogs(:one)
  end

  test "visiting the index" do
    visit post_blogs_url
    assert_selector "h1", text: "Post Blogs"
  end

  test "creating a Post blog" do
    visit post_blogs_url
    click_on "New Post Blog"

    fill_in "Content", with: @post_blog.content
    fill_in "Summary", with: @post_blog.summary
    fill_in "Title", with: @post_blog.title
    fill_in "Title Image", with: @post_blog.title_image
    click_on "Create Post blog"

    assert_text "Post blog was successfully created"
    click_on "Back"
  end

  test "updating a Post blog" do
    visit post_blogs_url
    click_on "Edit", match: :first

    fill_in "Content", with: @post_blog.content
    fill_in "Summary", with: @post_blog.summary
    fill_in "Title", with: @post_blog.title
    fill_in "Title Image", with: @post_blog.title_image
    click_on "Update Post blog"

    assert_text "Post blog was successfully updated"
    click_on "Back"
  end

  test "destroying a Post blog" do
    visit post_blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post blog was successfully destroyed"
  end
end
