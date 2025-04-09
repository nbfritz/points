# frozen_string_literal: true

class Views::Games::Edit < Views::Base
  def view_template
    render PageBody.new do
      render HeaderText.new { "Edit Game" }
      render Components::GameForm.new(method: "PUT")
    end
  end
end
