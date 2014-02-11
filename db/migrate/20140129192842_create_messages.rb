class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :user, index: true
      t.string :subject
      t.string :recipient
      t.string :recipient_email
      t.integer :recipient_phone_number
      t.datetime :send_time
      t.string :text

      t.timestamps
    end
  end
end
