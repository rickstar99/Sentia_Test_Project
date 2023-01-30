class Location_Person < ApplicationRecord
    belongs_to :locations
    belongs_to :person
end
