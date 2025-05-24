require "test_helper"

class PlayersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get players_url
    assert_response :success

    assert_dom "div", "Jane Doe"
    assert_dom "div", "John Smith"
  end

  test "should get show" do
    jane = players(:jane)
    get player_url(jane)
    assert_response :success

    assert_dom "div", "Jane Doe (jane.doe@example.com)"
  end

  test "should get new" do
    get new_player_url
    assert_response :success

    assert_dom "label", text: "Player Name"
    assert_dom "label", text: "Player Email"
  end

  test "should create player" do
    assert_difference(-> { Player.count }, 1) do
      post players_url, params: {player: {name: "New Player", email: "new.player@example.com"}}
    end
    assert_redirected_to players_url
  end

  test "should get edit" do
    jane = players(:jane)
    get edit_player_url(jane)
    assert_response :success

    assert_dom "label", text: "Player Name"
    assert_dom "input[value='Jane Doe']"
    assert_dom "label", text: "Player Email"
    assert_dom "input[value='jane.doe@example.com']"
  end

  test "should update player" do
    jane = players(:jane)
    patch player_url(jane), params: {player: {name: "New Jane"}}
    assert_redirected_to player_url(jane)
    jane.reload
    assert_equal "New Jane", jane.name
  end

  test "should destroy player" do
    jane = players(:jane)
    assert_difference(-> { Player.count }, -1) do
      delete player_url(jane)
    end
    assert_redirected_to players_url
  end
end
