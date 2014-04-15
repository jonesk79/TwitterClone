require 'spec_helper'

describe User do
  it { have_secure_password }

  it { validate_uniqueness_of :email }

  it { validate_presence_of :email }
  it { validate_presence_of :password_digest }

  it 'sends a confirmation email' do
    user = User.new(email: 'foo@bar.com', password: 'foobar', password_confirmation: 'foobar')
    expect(UserMailer).to receive(:signup_confirmation).with(user)
    user.save
  end
end
