class CreateJoinrecipients < ActiveRecord::Migration[5.2]
  def change
    create_table :joinrecipients do |t|
      t.belongs_to :message, index: true
      t.belongs_to :recipient, class_name: "User", index: true
      t.timestamps
    end
  end
end
