class Request < ApplicationRecord
  validates :by_id, :for_id, :status, presence: true
end
