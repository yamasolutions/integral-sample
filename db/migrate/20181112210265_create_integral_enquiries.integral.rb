# This migration comes from integral (originally 20171123155010)
class CreateIntegralEnquiries < ActiveRecord::Migration[4.2]
  def change
    create_table :integral_enquiries do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :message
      t.datetime :deleted_at

      t.timestamps null: false
    end
  end
end
