# frozen_string_literal: true

class Views::Games::Edit < Views::Base
  prop :game, Game

  def view_template
    render PageBody.new do
      render HeaderText.new { "Edit Game" }
      render Form.new(record: @game) do
        fail
      end
    end
  end
end
