class Breed < ApplicationRecord
  validates :personalities, :gen, :bio, :avatar
  
  belongs_to :puppy, :foreign_key => :breed_id
end
