# == Schema Information
#
# Table name: branches
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  contact    :string(255)
#  address    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BranchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
