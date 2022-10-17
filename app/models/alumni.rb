class Alumni < ApplicationRecord
  validates :graduations_year, :companies_worked, :person_id, presence: true
  has_many :people
  has_one :company
end
