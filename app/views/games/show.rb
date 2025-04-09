# frozen_string_literal: true

class Views::Games::Show < Views::Base
  def view_template
    h1 { "Games::Show" }
    p { "Find me in " }
  end
end
