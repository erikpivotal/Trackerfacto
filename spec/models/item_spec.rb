require 'rails_helper'
require 'faker'

RSpec.describe Item, type: :model do
  it 'can be valid' do
    item = build(:item)
    puts item.inspect
    expect(item).to be_valid
  end

  describe 'validations' do
    it 'is invalid if no emotion_type_id' do
      item = build(:item, emotion_type: nil)
      expect(item).to_not be_valid
      expect(item.errors['emotion_type_id']).to include "can't be blank"
    end

    it 'is invalid if no retro_id' do
      item = build(:item, retro: nil)
      expect(item).to_not be_valid
      expect(item.errors['retro_id']).to include "can't be blank"
    end

    it 'is invalid if no content' do
      item = build(:item, content: nil)
      expect(item).to_not be_valid
      expect(item.errors['content']).to include "can't be blank"
    end

    it 'is invalid if duplicate content' do
      existing = create(:item)
      item = build(:item, content: existing.content)
      expect(item).to_not be_valid
      expect(item.errors[:content]).to include("has already been taken")
    end
  end
end
