# frozen_string_literal: true

class Components::HeaderText < Components::Base
  def view_template
    h1(class: "font-bold text-2xl") { yield }
  end
end
