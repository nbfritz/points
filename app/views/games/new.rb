# frozen_string_literal: true

class Views::Games::New < Views::Base
  def view_template
    render PageBody.new do
      render HeaderText.new { "New Game" }
      render Components::GameForm.new(method: "POST")
    end
  end
end
