class Guest < ApplicationRecord
    has_many :forms
    has_many :formusers
end
