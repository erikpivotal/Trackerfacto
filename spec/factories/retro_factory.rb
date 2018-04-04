require 'faker'

FactoryBot.define do
  factory :retro do
    date { Faker::Date.between(2.days.ago, Date.today) }
  end
end
