class Devi < ApplicationRecord
    belongs_to :who
    belongs_to :activity
    belongs_to :type
    belongs_to :function
    belongs_to :user

    validates :who_id, presence: true
    validates :activity_id, presence: true
    validates :type_id, presence: true
    validates :function_id, presence: true
    validates :user_id, presence: true
end


