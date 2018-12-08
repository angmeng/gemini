class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :ic
      t.string :gender
      t.string :nationality
      t.date :birthday
      t.string :enrollment_date
      t.string :status_enrollment
      t.text :address
      t.integer :classroom_id

      t.timestamps
    end
  end
end
