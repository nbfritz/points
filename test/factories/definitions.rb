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

FactoryBot.define do
  factory :definition do
    sequence(:name) { |n| "Statistic #{n}" }
    initial_value { 0 }
    small_increment { 1 }
    large_increment { 10 }

    association :game
  end
end
