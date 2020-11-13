# This migration comes from integral (originally 20200421223602)
class AddStatusToIntegralUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :integral_users, :status, :integer, default: 0
  end
end
