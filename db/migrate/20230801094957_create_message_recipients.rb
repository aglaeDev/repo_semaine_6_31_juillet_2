class CreateMessageRecipients < ActiveRecord::Migration[7.0]
  def change
    create_table :message_recipients do |t|

      t.timestamps
    end
  end
end
