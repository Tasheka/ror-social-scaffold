require 'rails_helper'

RSpec.describe Friendhip, type: :model do
    context 'Checks friendship associations' do
        it { should belong_to(:user) }
    end
end