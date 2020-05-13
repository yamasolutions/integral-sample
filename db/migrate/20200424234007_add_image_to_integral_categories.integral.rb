# This migration comes from integral (originally 20191203090008)
class AddImageToIntegralCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :integral_categories, :image_id, :bigint
    add_index :integral_categories, :image_id
  end
end
