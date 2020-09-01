class Signup < ApplicationRecord
  belongs_to :camper
  belongs_to :activity

  validates :time, :inclusion => 1..24
end
