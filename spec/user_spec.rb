require 'rails_helper'

RSpec.describe User, type: :model do
    context 'Checks user associations' do
        it { should have_many(:posts) }
        it { should have_many(:comments) }
        it { should have_many(:likes) }
        it { should have_many(:friendhips) }
        it { should have_many(:inverse_friendships) }
        it { should have_many(:pending_friendships) }
        it { should have_many(:invitations) }
    end
end