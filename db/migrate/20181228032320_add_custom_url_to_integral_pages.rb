class AddCustomUrlToIntegralPages < ActiveRecord::Migration[5.2]
  def change
    add_column :integral_pages, :custom_url, :string
  end
end
