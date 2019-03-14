class Formuser < ApplicationRecord
    belongs_to :user
    belongs_to :who
    belongs_to :activity
    belongs_to :type
    has_many :formfunctions
end
