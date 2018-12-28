require 'rails_helper'

describe 'User management function', type: :system do
  let(:new_user) { FactoryBot.build(:user) }
  let(:saved_user) { FactoryBot.create(:user) }

  shared_examples_for 'confirming screen shows' do
    it do
      expect(page).to have_content user.email
      expect(page).to have_content user.password
      expect(page).to have_content user.name
    end
  end

  describe 'update' do
    let(:user) { saved_user }

    before do
      visit edit_user_path(saved_user)
      click_button 'Update User'
    end

    context 'when input valid params and submit' do
      it_behaves_like 'confirming screen shows'
    end
  end

  describe 'create' do
    let(:user) { new_user }

    before do
      visit new_user_path
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: user.password
      fill_in 'user_name', with: user.name
      click_button 'Create User'
    end

    context 'when input valid params and submit' do
      it_behaves_like 'confirming screen shows'
    end
  end
end
