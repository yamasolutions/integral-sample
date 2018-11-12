# This migration comes from integral (originally 20160519005736)
class AddImageToPosts < ActiveRecord::Migration[4.2]
  def change
    add_column :integral_posts, :image, :string
  end
end
