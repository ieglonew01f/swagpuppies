class Puppy < ApplicationRecord
  validates :name, :unique_hash, :score, :charisma, :xp, :breed_id, presence: true
  validates :name, length: { maximum: 50 }
  
	belongs_to :user, :foreign_key => :owner_id
  has_one :breed
end
