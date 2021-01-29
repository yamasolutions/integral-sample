# This migration comes from integral (originally 20210120004651)
class RemoveCkeditorAssets < ActiveRecord::Migration[6.0]
  def change
    drop_table :ckeditor_assets
  end
end
