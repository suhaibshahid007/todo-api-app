FactoryBot.define do
  factory :item do
    name { Faker::StarWars.character }
    done false
    todo
  end
end
