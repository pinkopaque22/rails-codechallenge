class Vehicle < ApplicationRecord
  #TODO think about adding lon/lat validations here
  validates_presence_of :state
end
