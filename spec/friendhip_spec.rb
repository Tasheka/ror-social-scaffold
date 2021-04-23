require 'rails_helper'

RSpec.describe Friendhip, type: :model do
    context 'Checks Friendhip associations' do
        it { should belong_to(:user) }
        it { should belong_to(:friend) }
        end
    end
end