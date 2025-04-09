# == Schema Information
#
# Table name: entries
#
#  id           :integer          not null, primary key
#  delta        :integer
#  statistic_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_entries_on_statistic_id  (statistic_id)
#

require "test_helper"

class EntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
