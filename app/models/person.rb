class Person < ApplicationRecord
    has_many :location   
    has_many :affiliation
end
