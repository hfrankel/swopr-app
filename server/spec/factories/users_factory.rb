FactoryBot.define do
  factory :user do
    email { 'TEST@TEST.COM' }
    password { '123456' }
    given_names { 'John James' }
    last_name { 'Bloggs' }
  end
end
