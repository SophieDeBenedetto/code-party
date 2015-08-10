class FixAdminOnUser < ActiveRecord::Migration
  def change
    remove_column :labs, :admin_id
    add_column :labs, :user_id, :integer
  end
end
