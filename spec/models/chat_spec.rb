require 'rails_helper'

describe Chat do
  it '有効なChatレコードが登録できること' do
    expect(FactoryBot.create(:chat)).to be_valid
  end

  it 'メッセージが401文字以上で無効なこと' do
    chat = FactoryBot.build(:chat, chat: 'a' * 401)
    chat.valid?
    expect(chat.errors[:chat]).to include 'は400文字以内で入力してください'
  end
end