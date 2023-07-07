require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { User.new(email: 'test@example.com', password: 'password') }
  let(:group) { Group.new(name: 'Sample Group', icon: 'sample.jpg', user:) }

  subject { group }

  it 'is valid with valid attributes' do
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an icon' do
    subject.icon = nil
    expect(subject).not_to be_valid
  end
end
