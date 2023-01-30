class Affiliation_Person < ApplicationRecord
    belongs_to :affiliations
    belongs_to :person
end
