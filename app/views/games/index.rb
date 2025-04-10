# frozen_string_literal: true

class Views::Games::Index < Views::Base
  prop :games, _Union(ActiveRecord::Relation, _Array(Player))

  def view_template
    render PageBody.new do
      render HeaderText.new { "Games" }

      if @games.any?
        @games.each do |game|
          render GameCard.new(game:)
        end
      else
        div { "No games found" }
      end
    end
  end
end
