# This migration comes from integral (originally 20160718011218)
class AddLocaleToIntegralUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :integral_users, :locale, :string, default: 'en', null: false
  end
end
