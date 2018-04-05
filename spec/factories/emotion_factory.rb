require 'faker'

FactoryBot.define do
  factory :emotion_type do
    emotion_type { Faker::Lorem.sentence}
  end
end
