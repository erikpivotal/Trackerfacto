class Item < ApplicationRecord
  belongs_to :retro
  belongs_to :emotion_type
  
  validates :emotion_type_id, presence: true
  validates :retro_id, presence: true
  validates :content, presence: true, uniqueness: true
end
