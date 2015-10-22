require 'bcrypt'
class User < ActiveRecord::Base

  include BCrypt

  validates :email, presence: true
  validates_format_of :email, :with => /\w*@\w*(.com|.net|.org)/, uniqueness: true
  validates :password_hash, presence: true 
  has_many :user_books
  has_many :books, through: :user_books

  def username
    self.email.split("@").first
  end
  
  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
  	self.password == password
  end
end
