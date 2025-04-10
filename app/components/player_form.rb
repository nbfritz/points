# frozen_string_literal: true

class Components::PlayerForm < Components::Base
  prop :player, Player

  def view_template
    render Form.new(record: @player) do
      render TextInput.new(record: @player, attribute: :name)
      render SubmitButton.new(record: @player)
    end
  end
end
