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

class Classroom < ApplicationRecord
    belongs_to :branch
    has_many :teaches
    has_many :students
    
    validates :name, presence: true
    validates :branch, presence: true
end
