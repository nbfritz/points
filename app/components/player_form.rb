# frozen_string_literal: true

class Components::PlayerForm < Components::Base
  prop :method, String

  def view_template
    form(action: players_path, method: @method, class: "flex flex-col gap-2") do
      input(name: "game[name]", required: true, minlength: "3")
      button(type: "submit") { "Save" }
    end
  end
end
