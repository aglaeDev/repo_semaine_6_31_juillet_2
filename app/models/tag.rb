class Tag < ApplicationRecord
    has_many :gossips
    has_many :gossips, through: :gossip_tags
end
