# frozen_string_literal: true

class Views::Players::Show < Views::Base
  prop :player, Player

  def view_template
    h1 { "Players::Show" }
    p { "Name: #{@player.name}" }
  end
end
