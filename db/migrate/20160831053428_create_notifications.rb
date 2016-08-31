class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.belongs_to :user, index: true
      t.belongs_to :news, index: true

      t.timestamps
    end
  end
end
