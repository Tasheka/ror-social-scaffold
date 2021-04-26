require 'rails_helper'

RSpec.describe User, type: :model do
    context 'Checks user associations' do
        it { should have_many(:posts) }
        it { should have_many(:comments) }
        it { should have_many(:likes) }
        it { should have_many(:friendhips) }
        it { should have_many(:recieved_friendships) }
        it { should have_many(:pending_friendships) }
        it { should have_many(:confirmed_friendships) }
        it { should have_many(:invitations) }
    end

    context 'Checks comment validations' do
        it { should validate_presence_of(:user) }
    end
end