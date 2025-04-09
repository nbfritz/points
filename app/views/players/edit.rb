# frozen_string_literal: true

class Views::Players::Edit < Views::Base
  def view_template
    render PageBody.new do
      render HeaderText.new { "New Player" }
      render Components::PlayerForm.new(method: "PUT")
    end
  end
end
