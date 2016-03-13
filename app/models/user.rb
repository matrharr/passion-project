require 'bcrypt'

class User < ActiveRecord::Base
  has_many :comments
  has_one :challenge
  belongs_to :accountability_group
  has_many :progress_reports

  validates :email, :password, {presence: true}

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(poss_pass)
    self.password == poss_pass
  end

end
