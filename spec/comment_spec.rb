require 'rails_helper'

RSpec.describe Comment, type: :model do
    context 'Checks comment associations' do
        it { should belong_to(:user) }
        it { should belong_to(:post) }
    end

    context 'Checks comment validations' do
        it { should validate_presence_of(:comment) }
    end
end