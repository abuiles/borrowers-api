require 'test_helper'

class FriendTest < ActiveSupport::TestCase
  test "requires first_name" do
    friend = Friend.new(last_name: 'Price', email: 'toby@ktm.com')
    assert_not friend.save, "Saved friend without first_name"
    assert_not_empty friend.errors[:first_name]
  end

  test "requires last_name" do
    friend = Friend.new(first_name: 'Toby', email: 'toby@ktm.com')
    assert_not friend.save, "Saved friend without last_name"
    assert_not_empty friend.errors[:last_name]
  end

  test "requires email" do
    friend = Friend.new(first_name: 'Toby', last_name: 'Price')
    assert_not friend.save, "Saved friend without email"
    assert_not_empty friend.errors[:email]
  end
end
