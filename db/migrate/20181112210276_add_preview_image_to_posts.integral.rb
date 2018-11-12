# This migration comes from integral (originally 20181011234446)
class AddPreviewImageToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :integral_posts, :preview_image_id, :integer
    add_index :integral_posts, :preview_image_id
  end
end
