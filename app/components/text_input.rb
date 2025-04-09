# frozen_string_literal: true

class Components::TextInput < Components::Base
  prop :name, String
  prop :label, String

  def view_template
    div(class: "flex flex-col gap-y-2") do
      label(for: @name) { @label }
      input(name: @name, class: "border border-gray-600 rounded-sm w-full p-2") { yield }
    end
  end
end
