# frozen_string_literal: true

class Views::Home::Index < Views::Base
  def view_template
    article(class: "flex flex-col gap-4") do
      h1(class: "text-xl font-bold") { "Points" }

      div(class: "flex") do
        a(href: new_player_path) { "Create Player" }
      end

      div(class: "flex") do
        a(href: new_game_path) { "Create Game" }
      end
    end
  end
end
