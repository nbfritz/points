# frozen_string_literal: true

class Components::ErrorText < Components::Base
  prop :errors, ActiveModel::Errors

  def view_template
    return unless errors.present?

    div(class: "text-red") do
      errors.full_messages.join("; ")
    end
  end
end
