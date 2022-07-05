require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "can't say balderdash" do
    @post = Post.new( title: "anything", body: "balderdash")

    assert_not @post.valid? 
  end

  test "Create new valid post" do
    @post = Post.new( title: "anything 2", body: "valid")

    assert @post.valid? 
  end
end
