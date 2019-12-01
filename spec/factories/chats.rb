FactoryBot.define do
    factory :chat do
      chat { "test message" }
      association :sender
      association :reciever 
    end
end