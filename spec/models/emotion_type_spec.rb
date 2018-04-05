require 'rails_helper'

RSpec.describe EmotionType, type: :model do
  it 'can be valid' do
    emotion_type = build(:emotion_type)
    expect(emotion_type).to be_valid
  end

  describe 'validations' do
    it 'is invalid if no date' do
      emotion_type = build(:emotion_type, emotion_type: nil)
      expect(emotion_type).to_not be_valid
      expect(emotion_type.errors['emotion_type']).to include "can't be blank"
    end
  end
end
