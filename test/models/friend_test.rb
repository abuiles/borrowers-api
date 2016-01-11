require 'test_helper'

class FriendTest < ActiveSupport::TestCase
  test "requires first_name" do
    friend = Friend.new(last_name: 'Snow', email: 'realjonsnow@wall.com')
    assert_not friend.save, "Saved friend without first_name"
    assert_not_empty friend.errors[:first_name]
  end

  test "requires last_name" do
    friend = Friend.new(first_name: 'Jon', email: 'realjonsnow@wall.com')
    assert_not friend.save, "Saved friend without last_name"
    assert_not_empty friend.errors[:last_name]
  end

  test "requires email" do
    friend = Friend.new(first_name: 'Jon', last_name: 'Snow')
    assert_not friend.save, "Saved friend without twitter"
    assert_not_empty friend.errors[:twitter]
  end
end
