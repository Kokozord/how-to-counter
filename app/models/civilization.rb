class Civilization < ApplicationRecord
  has_and_belongs_to_many :units
end
