require 'rails_helper'

RSpec.describe Comment, type: :model do
    context 'Checks comment associations' do
        it { should belong_to(:user) }
        it { should belong_to(:post) }
    end
end