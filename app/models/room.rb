class Room < ApplicationRecord
    has_many :onelists
    has_many :secondlists
end
