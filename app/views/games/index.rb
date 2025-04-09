# frozen_string_literal: true

class Views::Games::Index < Views::Base
  def view_template
    h1 { "Games::Index" }
    p { "Find me in " }
  end
end
