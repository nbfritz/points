# frozen_string_literal: true

class Components::GameCard < Components::Base
  prop :game, Game

  def view_template
    div(class: "flex w-md p-3 rounded-md border-gray-400") do
      a(href: game_path(@game), class: "w-full h-full") do
        h2(class: "text-lg font-bold") { @game.name }
      end
    end
  end
end
