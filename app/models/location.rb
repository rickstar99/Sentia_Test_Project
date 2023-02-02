class Location < ApplicationRecord
    has_many :people_locations
    has_many :people, through: :people_locations
end