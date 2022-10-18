# frozen_string_literal: true

class Company < ApplicationRecord
     validates :website, :name, presence: true
     has_many :positions
end
