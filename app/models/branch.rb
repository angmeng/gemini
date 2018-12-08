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

class Branch < ApplicationRecord
    has_many :classrooms
    has_one :licensee
    
    validates :name, presence: true, uniqueness: true
    validates :licensee, presence: true, uniqueness: true
end
