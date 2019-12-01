FactoryBot.define do
    factory :event_chat do
      chat { "test message" }
      association :event
      association :user 
    end
end