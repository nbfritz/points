# == Schema Information
#
# Table name: statistics
#
#  id            :integer          not null, primary key
#  definition_id :integer          not null
#  seat_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_statistics_on_definition_id  (definition_id)
#  index_statistics_on_seat_id        (seat_id)
#

class Statistic < ApplicationRecord
  belongs_to :seat
  belongs_to :definition
end
