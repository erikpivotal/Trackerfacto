class EmotionType < ApplicationRecord
  validates :emotion_type, presence: true, uniqueness: true
end
