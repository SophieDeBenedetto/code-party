class AddDescriptionToLab < ActiveRecord::Migration
  def change
    add_column :labs, :description, :text
  end
end
