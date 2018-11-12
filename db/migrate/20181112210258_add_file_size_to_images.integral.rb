# This migration comes from integral (originally 20170608131624)
class AddFileSizeToImages < ActiveRecord::Migration[4.2]
  def change
    add_column :integral_images, :file_size , :integer
  end
end
