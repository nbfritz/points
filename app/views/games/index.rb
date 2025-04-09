# frozen_string_literal: true

class Views::Games::Index < Views::Base
  prop :games, ActiveRecord::Relation

  def view_template
    render PageBody.new do
      render HeaderText.new { "Games" }

      if @games
        @games.each do |game|
          render GameCard.new(game:)
        end
      else
        div { "No games found" }
      end
    end
  end
end
