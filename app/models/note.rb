class Note < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :user_id, presence: true
end
