FactoryBot.define do
  factory :user do
    email { 'test@test.com' }
    password { '123456' }
    given_names { 'John James' }
    last_name { 'Bloggs' }
  end
end
