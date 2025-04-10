# frozen_string_literal: true

class Components::TextInput < Components::Base
  prop :record, ActiveRecord::Base
  prop :attribute, Symbol

  include Phlex::Rails::Helpers::FieldName

  def view_template
    div(class: "flex flex-col gap-y-2") do
      label(for: name) { @record.class.human_attribute_name(@attribute)  }
      input(
        name:,
        value: @record.send(@attribute),
        class: "border border-gray-600 rounded-sm w-full p-2"
      )
    end
  end

  private

  def name
    field_name(@record.model_name.singular, @attribute)
  end
end
