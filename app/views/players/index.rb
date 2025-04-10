# frozen_string_literal: true

class Views::Players::Index < Views::Base
  prop :players, _Union(ActiveRecord::Relation, _Array(Player))

  def view_template
    render PageBody.new do
      render HeaderText.new { "Players" }

      if @players.any?
        @players.each do |player|
          render PlayerCard.new(player:)
        end
      else
        div { "No players found" }
      end
    end
  end
end
