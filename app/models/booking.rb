class Booking < ActiveRecord::Base
  has_and_belongs_to_many :passengers
  accepts_nested_attributes_for :passengers
  belongs_to :flight

  validates :flight_id, presence: true
end
