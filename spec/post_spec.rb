require 'rails_helper'

RSpec.describe Post, type: :model do
    context 'Checks post associations' do
        it { should belong_to(:user) }
        it { should have_many(:comments) }
        it { should have_many(:likes) }
    end
end