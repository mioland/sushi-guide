Learn more or give us feedback
require 'rails_helper'

describe EventMsgRep do
  it '有効なEventMsgRepレコードが登録できること' do
    expect(FactoryBot.create(:event_msg_rep)).to be_valid
  end
end