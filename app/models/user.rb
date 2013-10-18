class User < ActiveRecord::Base
  attr_reader :entered_password

  validates :name, :length => { :minimum => 3, :message => "must be at least 3 characters long!" }
  validates :email, :uniqueness => true, :format => /.+@.+\..+/
  validates :entered_password, :length => { :minimum => 6 }

  has_many :photos
  has_many :albums, :through => :photos

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(pass)
    @entered_password = pass
    @password = Password.create(pass)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    return user if user && (user.password == password)
    nil
  end
end