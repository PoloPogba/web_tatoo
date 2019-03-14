class Function < ApplicationRecord
    belongs_to :type
    has_many :devis
end
