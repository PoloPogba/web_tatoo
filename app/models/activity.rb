class Activity < ApplicationRecord
    belongs_to :who
    has_many :types
end
