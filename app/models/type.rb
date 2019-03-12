class Type < ApplicationRecord
    belongs_to :activity
    has_many :functions
end
