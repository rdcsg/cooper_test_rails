require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should have a valid Factory' do
    expect(FactoryGirl.create(:user)).to be_valid
  end

  describe 'Validations' do
    it {is_expected.to validate_presence_of(:email)}
    it {is_expected.to validate_confirmation_of(:password)}
  end

  descrive 'should not have invalid email' do
    emails =['asdf@ ds.com', '@example.com', 'test me @yahoo.com', 'asdf@example', 'ddd@.d. .d', 'ddd@.d']
    emails.each |email| do
      it { is_expected.not_to allow_value(email).for(:email) }
    end
  end

  describe 'should have a valid email address' do
    emails = ['asdf@ds.com', 'hello@example.uk', 'test1234@yahoo.si', 'asdf@example.eu']
      emails.each do |email|
        it { is_expected.to allow_value(email).for(:email) }
      end
    end
  end

  describe 'Relations' do
    it { is_expected.to have_many :performance_data }
  end

end
