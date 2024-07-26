require 'rails_helper'

RSpec.describe Article, type: :model do
  it "is valid with valid attributes" do
    article = build(:article)
    expect(article).to be_valid
  end

  it "is not valid without a title" do
    article = build(:article, title: nil)
    expect(article).not_to be_valid
  end

  it "is not valid without an author" do
    article = build(:article, author: nil)
    expect(article).not_to be_valid
  end
end
