# == Schema Information
#
# Table name: students
#
#  id                :bigint(8)        not null, primary key
#  name              :string(255)
#  ic                :string(255)
#  gender            :string(255)
#  nationality       :string(255)
#  birthday          :date
#  enrollment_date   :string(255)
#  status_enrollment :string(255)
#  address           :text(65535)
#  classroom_id      :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  father_id         :integer
#  mother_id         :integer
#

class Student < ApplicationRecord
    belongs_to :classroom
    belongs_to :father
    belongs_to :mother
end
