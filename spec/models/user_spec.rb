require 'spec_helper'

describe User do
  it { have_secure_password }
  it { validate_uniqueness_of :email }
end
