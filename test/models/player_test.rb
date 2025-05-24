require "test_helper"

class PlayerTest < ActiveSupport::TestCase
  test "fixtures exist" do
    assert Player.any?
    assert Player.find_by_name("John Smith")
    assert Player.find_by_name("Jane Doe")
  end

  test "that there cannot be duplicate emails" do
    player = Player.new(name: "Also Jane Doe", email: "jane.doe@example.com")
    refute player.valid?
    assert_includes(player.errors.full_messages, "Email has already been taken")
  end

  test "that email and name must be present" do
    player = Player.new(name: nil, email: nil)
    refute player.valid?
    assert_includes(player.errors.full_messages, "Email can't be blank")
    assert_includes(player.errors.full_messages, "Name can't be blank")
  end
end
