# frozen_string_literal: true

class Views::Players::Show < Views::Base
  def view_template
    h1 { "Players::Show" }
    p { "Find me in " }
  end
end
