# == Schema Information
#
# Table name: sessions
#
#  id         :integer          not null, primary key
#  name       :string
#  game_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_sessions_on_game_id  (game_id)
#

FactoryBot.define do
  factory :session do
    sequence(:name) { |n| "Session #{n}" }

    association :game
  end
end
