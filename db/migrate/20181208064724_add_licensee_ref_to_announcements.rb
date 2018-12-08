class AddLicenseeRefToAnnouncements < ActiveRecord::Migration[5.2]
  def change
    add_column :announcements, :licensee_id, :integer
  end
end
