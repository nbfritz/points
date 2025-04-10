# frozen_string_literal: true

class Components::PlayerCard < Components::Base
  prop :player, Player

  def view_template
    div(class: "flex w-md p-3 rounded-md border-gray-400") do
      a(href: player_path(@player), class: "w-full h-full") do
        h2(class: "text-lg font-bold") { @player.name }
      end
    end
  end
end
