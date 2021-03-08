require 'rails_helper'

RSpec.describe Friendship, type: :model do
  let(:user) { User.create(name: 'test', password: 'testing', email: 'email@email.com') }
  let(:friend_user) { User.create(name: 'test2', password: 'testing2', email: 'friend_email@email.com') }

  context 'assosciations' do
    it { should belong_to(:user).class_name('User') }
    it { should belong_to(:friend).class_name('User') }
  end
end
