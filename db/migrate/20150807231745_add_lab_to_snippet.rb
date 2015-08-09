class AddLabToSnippet < ActiveRecord::Migration
  def change
    add_column :snippets, :lab_id, :integer
  end
end
