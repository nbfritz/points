# frozen_string_literal: true

class Components::SubmitButton < Components::Base
  prop :record, ActiveRecord::Base

  def view_template
    button(type: "submit", class: "border border-gray-600 rounded-sm w-full p-2") do
      if block_given?
        yield
      else
        @record.class.human_attribute_name(@record.persisted? ? :update : :create)
      end
    end
  end
end
