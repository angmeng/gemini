class CreateFathers < ActiveRecord::Migration[5.2]
  def change
    create_table :fathers do |t|
      t.string :name
      t.string :ic
      t.string :gender
      t.string :nationality
      t.string :contact
      t.text :address
      t.string :email
      t.string :password
      t.integer :branch_id

      t.timestamps
    end
  end
end
