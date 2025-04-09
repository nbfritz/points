# == Schema Information
#
# Table name: definitions
#
#  id              :integer          not null, primary key
#  name            :string
#  initial_value   :integer
#  small_increment :integer
#  large_increment :integer
#  game_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_definitions_on_game_id  (game_id)
#

require "test_helper"

class DefinitionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
