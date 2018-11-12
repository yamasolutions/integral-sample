# This migration comes from integral (originally 20170801182434)
class AddParentToPages < ActiveRecord::Migration[4.2]
  def change
    add_column :integral_pages, :parent_id, :integer
  end
end
