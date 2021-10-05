require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#associations' do
    it { should belong_to(:todo) }
    it { is_expected.to belong_to(:todo) }
  end

  describe '#validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:done) }
  end
end
