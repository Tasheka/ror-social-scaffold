require 'rails_helper'

RSpec.describe Friendhip, type: :model do
    context 'Checks friendhip associations' do
        it { should belong_to(:user) }
        it { should belong_to(:friend) }
    end

    context 'Checks friendhip validations' do
        it { should validate_presence_of(:friend_id) }
        it { should validate_uniqueness_of(:friend_id) }
    end
end