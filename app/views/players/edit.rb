# frozen_string_literal: true

class Views::Players::Edit < Views::Base
  prop :player, Player

  def view_template
    render PageBody.new do
      render HeaderText.new { "New Player" }
      render Components::PlayerForm.new(player: @player)
    end
  end
end
