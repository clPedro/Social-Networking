require 'rails_helper'

RSpec.describe User, type: :model do
  it 'user is valid' do
    user = User.new(
      name: 'sr.zé',
      email:'seuze@user.com',
      phone:'16234568',
      avatar: fixture_file_upload(Rails.root.join("spec", "support", "test-avatar.png"), "image/png"),
      password: "123456")

    expect(user).to be_valid
  end
  
  it 'user is NOT valid' do
    user = User.new(
      name: 'sr.zé',
      phone:'16234568',
      password: "123456")
      
    expect(user).to_not be_valid
  end

  it 'user should have a name' do
    user = User.new(
      email:'seuze@user.com',
      phone:'16234568',
      avatar: fixture_file_upload(Rails.root.join("spec", "support", "test-avatar.png"), "image/png"),
      password: "123456")

    expect(user).to_not be_valid
  end
end
