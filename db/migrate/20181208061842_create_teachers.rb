class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :ic
      t.string :gender
      t.string :nationality
      t.text :experiences
      t.string :contact
      t.text :address
      t.string :email
      t.string :password
      t.integer :classroom_id

      t.timestamps
    end
  end
end
