class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.string :title
      t.text :description
      t.date :date
      t.boolean :active

      t.timestamps
    end
  end
end
