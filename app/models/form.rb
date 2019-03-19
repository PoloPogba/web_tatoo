class Form < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :who, optional: true
    belongs_to :activity, optional: true
    belongs_to :type, optional: true
    belongs_to :guest, optional: true
    has_many :formfunctions
end
