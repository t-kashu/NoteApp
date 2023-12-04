class Note < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_rich_text :content

  validates :content, presence: true, length: { maximum: 2000 }
  validates :user_id, presence: true
end
