require 'rails_helper'

describe EventChat do
  it "有効なEventChatが登録されること" do
    expect(FactoryBot.create(:event_chat)).to be_valid
  end

  it "メッセージは401文字以上で無効であること" do
    event_chat = FactoryBot.build(:event_chat,chat: "a"*401)
    event_chat.valid?
    expect(event_chat.errors[:chat]).to include "は400文字以内で入力してください"
  end
end