require 'rails_helper'

RSpec.describe User do
  it 'cannot have a recipient_id equal to a user_id' do
    user = User.new(id: 1, recipient_id: 1)
    user.save
    expect(user.recipient_id).to_not eq(user.id)
  end
end
