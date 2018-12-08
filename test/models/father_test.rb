# == Schema Information
#
# Table name: fathers
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)
#  ic          :string(255)
#  gender      :string(255)
#  nationality :string(255)
#  contact     :string(255)
#  address     :text(65535)
#  email       :string(255)
#  password    :string(255)
#  branch_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class FatherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
