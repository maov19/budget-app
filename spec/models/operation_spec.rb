require 'rails_helper'

RSpec.describe Operation, type: :model do
  let(:user) { User.new(email: 'test@example.com', password: 'password') }

  it "is valid with valid attributes" do
    operation = Operation.new(name: "Sample Operation", amount: 100, author: user)
    expect(operation).to be_valid
  end

  it "is not valid without a name" do
    operation = Operation.new(amount: 100, author: user)
    expect(operation).not_to be_valid
  end

  it "is not valid without an amount" do
    operation = Operation.new(name: "Sample Operation", author: user)
    expect(operation).not_to be_valid
  end

  it "is not valid with a nil amount" do
    operation = Operation.new(name: "Sample Operation", amount: nil, author: user)
    expect(operation).not_to be_valid
  end
end
