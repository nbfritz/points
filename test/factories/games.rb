# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :game do
    name { "Generic Game" }
  end
end
