class Form < ApplicationRecord
    belongs_to :guest
    belongs_to :who
    belongs_to :activity
    belongs_to :type
end
