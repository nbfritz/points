# frozen_string_literal: true

class Views::Players::Index < Views::Base
  def view_template
    h1 { "Players::Index" }
    p { "Find me in " }
  end
end
