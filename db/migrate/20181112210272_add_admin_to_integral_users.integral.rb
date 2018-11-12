# This migration comes from integral (originally 20180306204912)
class AddAdminToIntegralUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :integral_users, :admin, :boolean, default: false
  end
end
