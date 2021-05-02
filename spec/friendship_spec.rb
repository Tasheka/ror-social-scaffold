require 'rails_helper'

RSpec.describe Friendship, type: :model do
    context 'Checks friendship associations' do
        it { should belong_to(:user) }
        it { should belong_to(:friend) }
    end

    context 'Checks friendship validations' do
        it { should validate_presence_of(:friend_id) }
        it { should validate_uniqueness_of(:friend_id) }
    end
end