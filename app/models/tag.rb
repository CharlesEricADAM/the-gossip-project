class Tag < ApplicationRecord
    has_many :joingossiptags
    has_many :gossips, through: :joingossiptags
end
