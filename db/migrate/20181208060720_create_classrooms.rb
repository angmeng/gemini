class CreateClassrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :classrooms do |t|
      t.string :name
      t.text :description
      t.integer :branch_id

      t.timestamps
    end
  end
end
