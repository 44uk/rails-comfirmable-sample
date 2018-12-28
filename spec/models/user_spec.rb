require 'rails_helper'

describe User, type: :model do
  let(:user) { FactoryBot.build(:user,
    email: 'user@example.com',
    password: 'P@ssw0rd',
    name: 'User Name'
  )}
  it { expect(user.save).to be true }
end
