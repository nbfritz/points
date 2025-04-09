# frozen_string_literal: true

class Components::GameForm < Components::Base
  prop :method, String

  def view_template
    form(action: games_path, method: @method, class: "flex flex-col gap-y-2") do
      render TextInput.new(name: "game[name]", label: "Game Name")
      render SubmitButton.new { "Save" }
    end
  end
end
