# frozen_string_literal: true

class Components::PageBody < Components::Base
  def view_template
    div(class: "flex flex-col gap-y-4") { yield }
  end
end
