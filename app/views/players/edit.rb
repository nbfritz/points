# frozen_string_literal: true

class Views::Players::Edit < Views::Base
  def view_template
    h1 { "New Player" }
    render Components::PlayerForm.new
  end
end
