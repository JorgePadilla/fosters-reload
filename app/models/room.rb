class Room < ApplicationRecord
    has_many :onelists
    has_many :secondlists
    has_many :accomodations
end
