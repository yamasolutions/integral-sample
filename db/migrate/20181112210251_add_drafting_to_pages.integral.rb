# This migration comes from integral (originally 20160809115906)
class AddDraftingToPages < ActiveRecord::Migration[4.2]
  def change
    add_column :integral_pages, :status, :integer, default: 0
  end
end
