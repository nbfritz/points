# == Schema Information
#
# Table name: seats
#
#  id         :integer          not null, primary key
#  player_id  :integer
#  session_id :integer
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_seats_on_player_id   (player_id)
#  index_seats_on_session_id  (session_id)
#

class Seat < ApplicationRecord
  belongs_to :player
  belongs_to :session
end
