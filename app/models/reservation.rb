class Reservation < ApplicationRecord
  belongs_to :accomodation
  belongs_to :user
end
