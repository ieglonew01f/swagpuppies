class Personality < ApplicationRecord
  validates :name, :score, presence: true
end
