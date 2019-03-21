class Charge < ApplicationRecord
    belongs_to :user, optional: true
end
