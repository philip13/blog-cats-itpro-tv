require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers # Rails >= 5

  setup do
    @user = User.create(email: "test@example.com")
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    sign_in @user

    get new_post_url
    assert_response :success
  end

  test "should not new if not logged in" do
    get new_post_url
    assert_redirected_to new_user_session_path
  end

  test "should create post" do
    sign_in @user
    
    assert_difference('Post.count') do
      post posts_url, params: { post: { body: @post.body, title: "#{@post.title}-#{rand(8)}" } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    sign_in @user

    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    sign_in @user

    patch post_url(@post), params: { post: { body: @post.body, title: @post.title } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    sign_in @user

    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end

  # Logged out
  
end
