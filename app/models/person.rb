class Person < ApplicationRecord
    has_many :people_locations
    has_many :locations, through: :people_locations
    has_many :people_affiliations
    has_many :affiliations, through: :people_affiliations
end