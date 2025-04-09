# frozen_string_literal: true

class Views::Players::New < Views::Base
  def view_template
    render PageBody.new do
      render HeaderText.new { "New Player" }
      render Components::PlayerForm.new(method: "POST")
    end
  end
end
