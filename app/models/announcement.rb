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

class Announcement < ApplicationRecord
    belongs_to :admin
    belongs_to :licensee
end
