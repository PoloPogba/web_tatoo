class Activity < ApplicationRecord
   
    has_many :forms
    has_many :formusers
end
