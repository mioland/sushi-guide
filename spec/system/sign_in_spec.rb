require 'rails_helper'

describe 'ログインのシステムテスト', type: :system do
  before do
    visit new_user_session_path
  end

  describe '有効なログインの場合' do
    before do
      user = FactoryBot.create(:user)
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: user.password
      click_button 'Login'
    end
    it 'ルートにリダイレクトされること' do
      expect(current_path).to eq(root_path)
    end
    it 'ログイン後のメニュー一覧が表示されること' do
      within '.header-nav' do
        expect(page).to have_content 'Tour search'
        expect(page).to have_content 'Participating tour'
        expect(page).to have_content 'Edit profile'
        expect(page).to have_content 'Message'
        expect(page).to have_content 'Logout'
      end
    end
  end
  describe '無効なログインの場合' do
    before do
      fill_in 'user_email', with: 'a'
      fill_in 'user_password', with: 'a'
      click_button 'Login'
    end
    it 'ルートにリダイレクトされないこと' do
      expect(current_path).to_not eq(root_path)
    end
    it 'エラーメッセージが表示されること' do
      expect(page).to have_content 'メールアドレスまたはパスワードが違います。'
    end
  end
end