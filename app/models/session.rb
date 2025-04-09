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

class Session < ApplicationRecord
  belongs_to :game
  has_many :seats
end
