# frozen_string_literal: true

class Components::Form < Components::Base
  prop :record, ActiveRecord::Base

  def view_template
    form(
      action: url_for(@record),
      method: "POST",
      class: "flex flex-col gap-y-4"
    ) do
      input(type: "hidden", name: "_method", value: "PUT") if @record.persisted?
      yield
    end
  end
end