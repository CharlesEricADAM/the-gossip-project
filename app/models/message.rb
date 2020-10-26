class Message < ApplicationRecord
    belongs_to :sender, class_name: "User"
    has_many :joinrecipients
    has_many :recipients, class_name: "User", through: :joinrecipients
end
 