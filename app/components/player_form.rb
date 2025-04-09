# frozen_string_literal: true

class Components::PlayerForm < Components::Base
  def view_template
    h1 { 'TEST'}
    Form do
      FormField do
        FormFieldLabel { "Name" }
        Input(required: true, minlength: "3")
        FormFieldHint
        FormFieldError
      end
      Button(type: "submit") { "Save" }
    end
    h1 { 'TEST'}
  end
end
