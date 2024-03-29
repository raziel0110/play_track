class Song < ApplicationRecord
  validates :filename, presence: true

  scope :by_recent, -> { order(created_at: :desc) }
end
