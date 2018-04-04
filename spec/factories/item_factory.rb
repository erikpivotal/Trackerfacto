require 'faker'

FactoryBot.define do
  factory :item do
    emotion_type
    retro
    content { Faker::Lorem.sentence }
  end
end
