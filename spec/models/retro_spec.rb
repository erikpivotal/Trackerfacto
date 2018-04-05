require 'rails_helper'

RSpec.describe Retro, type: :model do
  it 'can be valid' do
    retro = build(:retro)
    expect(retro).to be_valid
  end

  describe 'validations' do
    it 'is invalid if no date' do
      retro = build(:retro, date: nil)
      expect(retro).to_not be_valid
      expect(retro.errors['date']).to include "can't be blank"
    end
  end
end
