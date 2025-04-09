# frozen_string_literal: true

class Views::Games::New < Views::Base
  def view_template
    render Components::GameForm
  end
end
