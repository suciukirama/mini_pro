require 'test_helper'

class PostBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_blog = post_blogs(:one)
  end

  test "should get index" do
    get post_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_post_blog_url
    assert_response :success
  end

  test "should create post_blog" do
    assert_difference('PostBlog.count') do
      post post_blogs_url, params: { post_blog: { content: @post_blog.content, summary: @post_blog.summary, title: @post_blog.title, title_image: @post_blog.title_image } }
    end

    assert_redirected_to post_blog_url(PostBlog.last)
  end

  test "should show post_blog" do
    get post_blog_url(@post_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_blog_url(@post_blog)
    assert_response :success
  end

  test "should update post_blog" do
    patch post_blog_url(@post_blog), params: { post_blog: { content: @post_blog.content, summary: @post_blog.summary, title: @post_blog.title, title_image: @post_blog.title_image } }
    assert_redirected_to post_blog_url(@post_blog)
  end

  test "should destroy post_blog" do
    assert_difference('PostBlog.count', -1) do
      delete post_blog_url(@post_blog)
    end

    assert_redirected_to post_blogs_url
  end
end
