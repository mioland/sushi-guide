Learn more or give us feedback
require 'rails_helper'

describe EventCHatRep do
  it '有効なEventChatRepレコードが登録できること' do
    expect(FactoryBot.create(:event_chat_rep)).to be_valid
  end
end