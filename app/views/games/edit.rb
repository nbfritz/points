# frozen_string_literal: true

class Views::Games::Edit < Views::Base
  def view_template
    render Components::GameForm
  end
end
