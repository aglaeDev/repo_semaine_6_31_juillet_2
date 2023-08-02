class AddGossipRefToGossipTags < ActiveRecord::Migration[7.0]
  def change
    add_reference :gossip_tags, :gossip, null: false, foreign_key: true
  end
end
