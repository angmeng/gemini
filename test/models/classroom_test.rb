# == Schema Information
#
# Table name: classrooms
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)
#  description :text(65535)
#  branch_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ClassroomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
