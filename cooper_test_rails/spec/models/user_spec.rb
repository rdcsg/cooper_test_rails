require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should have a valid Factory' do
    expect(FactoryGirl.create(:user)).to be_valid
  end
end