class AddCompanyToNotification < ActiveRecord::Migration[5.1]
  def change
    add_column :notifications, :company, :integer
  end
end
