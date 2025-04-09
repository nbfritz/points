# frozen_string_literal: true

class Components::GameForm < Components::Base
  def view_template
    Form(action: games_path, method: "POST") do
      FormField do
        FormFieldLabel { "Name" }
        Input(name: "game[name]", required: true, minlength: "3")
        FormFieldHint
        FormFieldError
      end
      Button(type: "submit") { "Save" }
    end
  end
end
