class Type < ApplicationRecord
    belongs_to :activity
    has_many :functions
    has_many :devis
end
