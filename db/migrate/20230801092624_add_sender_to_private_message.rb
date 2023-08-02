class AddSenderToPrivateMessage < ActiveRecord::Migration[7.0]
  def change
    add_reference :private_messages, :sender, null: false, foreign_key: { to_table: :users } 
  end
end
