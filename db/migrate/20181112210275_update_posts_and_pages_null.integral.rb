# This migration comes from integral (originally 20180920030236)
class UpdatePostsAndPagesNull < ActiveRecord::Migration[5.1]
  def change
    change_column_null :integral_pages, :status, false
    change_column_null :integral_posts, :status, false
  end
end
