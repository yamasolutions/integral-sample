# This migration comes from integral (originally 20160610021858)
class AddViewCountToPosts < ActiveRecord::Migration[4.2]
  def change
    add_column :integral_posts, :view_count, :integer, default: 0
  end
end
