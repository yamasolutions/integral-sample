# This migration comes from integral (originally 20160130051535)
class AddNameAndAvatarToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :integral_users, :name, :string
    add_column :integral_users, :avatar, :string
  end
end
