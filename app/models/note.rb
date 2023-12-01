class Note < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_rich_text :content
  validates :user_id, presence: true
end
