# == Schema Information
#
# Table name: announcements
#
#  id          :bigint(8)        not null, primary key
#  title       :string(255)
#  content     :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  admin_id    :integer
#  licensee_id :integer
#

require 'test_helper'

class AnnouncementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
