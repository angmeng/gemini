# == Schema Information
#
# Table name: teachers
#
#  id           :bigint(8)        not null, primary key
#  name         :string(255)
#  ic           :string(255)
#  gender       :string(255)
#  nationality  :string(255)
#  experiences  :text(65535)
#  contact      :string(255)
#  address      :text(65535)
#  email        :string(255)
#  password     :string(255)
#  classroom_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Teacher < ApplicationRecord
    belongs_to :classroom
end
