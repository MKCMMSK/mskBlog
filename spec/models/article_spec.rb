require 'rails_helper'

RSpec.describe Article, type: :model do
  it "is valid with all parameters" do
    article = Article.create(title: 'test', body: 'test')
    expect(article).to be_valid
  end

  it "is not valid with no body" do
    article = Article.create(title: 'test')
    expect(article).to_not be_valid
  end

  it "is not valid with no title" do
    article = Article.create(body: 'test')
    expect(article).to_not be_valid
  end

end
