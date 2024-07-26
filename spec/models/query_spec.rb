require 'rails_helper'

RSpec.describe Query, type: :model do
  it "is valid with valid attributes" do
    query = FactoryBot.build(:query)
    expect(query).to be_valid
  end

  it "is not valid without a query" do
    query = FactoryBot.build(:query, query: nil)
    expect(query).not_to be_valid
  end

  it "is not valid without a user_ip" do
    query = FactoryBot.build(:query, user_ip: nil)
    expect(query).not_to be_valid
  end
end
