FactoryBot.define do
    factory :user, aliases: %i[sender reciever] do
      name { 'Test' }
      nick_name { 'T' }
      sequence(:email) { |n| "tester#{n}@example.com" }
      password { 'hogehoge' }

    # 管理者
    trait :admin_user do
      admin true
    end
    end
end