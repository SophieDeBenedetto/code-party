class AddAdminToLab < ActiveRecord::Migration
  def change
    add_column :labs, :admin_id, :integer
  end
end
