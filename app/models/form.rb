class Form < ApplicationRecord
    belongs_to :guest
    belongs_to :who
    belongs_to :activity, optional: true
    belongs_to :type, optional: true
end
