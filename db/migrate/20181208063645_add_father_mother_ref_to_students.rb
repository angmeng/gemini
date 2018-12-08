class AddFatherMotherRefToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :father_id, :integer
    add_column :students, :mother_id, :integer
  end
end
