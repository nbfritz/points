# frozen_string_literal: true

class Components::GameForm < Components::Base
  prop :record, ActiveRecord::Base

  def view_template
    render Form(record: @record) do
      render TextInput.new(record: @record, attribute: :name)
      render SubmitButton.new { "Save" }
    end
  end
end
