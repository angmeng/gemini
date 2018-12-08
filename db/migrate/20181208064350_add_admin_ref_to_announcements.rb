class AddAdminRefToAnnouncements < ActiveRecord::Migration[5.2]
  def change
    add_column :announcements, :admin_id, :integer
  end
end
