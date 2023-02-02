class Affiliation < ApplicationRecord
    has_many :people_affiliations
    has_many :people, through: :people_affiliations
end