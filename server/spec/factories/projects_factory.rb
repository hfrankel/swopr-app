FactoryBot.define do
  factory :project do
    title { "My Project" }
    description { "This is a description for my project" }
    user
  end
end
