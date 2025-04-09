# frozen_string_literal: true

class Components::SubmitButton < Components::Base
  def view_template
    button(type: "submit", class: "border border-gray-600 rounded-sm w-full p-2") { yield }
  end
end
