require 'rails_helper'

RSpec.describe Admin, type: :model do
  it 'validate an admin' do
    admin = Admin.new(name: 'admin first', email: 'admin@admin.com', password: '123456')

    expect(admin.email).to eql 'admin@admin.com'
    expect(admin).to be_valid
  end

  it 'admin is NOT valid' do
    admin = Admin.new(email: 'admin@admin.com')

    expect(admin.email).to eql 'admin@admin.com'
    expect(admin).to_not be_valid
  end
end
