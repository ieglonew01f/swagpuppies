class Wallet < ApplicationRecord
  validates :user_id, presence: true
  validates :user_id, uniqueness: true
  
  belongs_to :user, :foreign_key => :user_id
end
