require 'rails_helper'

RSpec.describe Post, type: :model do
  it "post is valid" do

    post = FactoryBot.build(:post)

    expect(post).to_not be_valid

  end
end