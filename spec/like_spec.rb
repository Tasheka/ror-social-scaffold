require 'rails_helper'

RSpec.describe Like, type: :model do
    context 'Checks like associations' do
        it { should belong_to(:user) }
        it { should belong_to(:post) }
        end
    end

    context 'Checks like validations' do
        it { should validate_uniqueness_of(:user_id).scoped_to(:post_id) }
      end
end