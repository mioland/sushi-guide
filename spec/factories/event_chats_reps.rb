FactoryBot.define do
    factory :event_chat_rep do
      chat { 'test message' }
      association :event_chat
      association :user
    end
end