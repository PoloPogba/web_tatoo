class Formfuction < ApplicationRecord
    belongs_to :form
    belongs_to :function, optional: true
end
