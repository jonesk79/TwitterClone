class User < ActiveRecord::Base
  after_create :send_signup_confirmation
  has_secure_password

  validates_uniqueness_of :email

  validates :email, :presence => true
  validates :password_digest, :presence => true

  def send_signup_confirmation
    UserMailer.signup_confirmation(self)
  end
end
