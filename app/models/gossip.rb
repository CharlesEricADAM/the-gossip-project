class Gossip < ApplicationRecord
    belongs_to :user
    has_many :joingossiptags
    has_many :tags, through: :joingossiptags
end
