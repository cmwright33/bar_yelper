class User < ActiveRecord::Base
  has_and_belongs_to_many :favoritebars

  attr_accessible :name, :password, :password_confirmation

  attr_accessor :password
  before_save :encrypt_password


  validates :password, confirmation: true
  validates :password, presence: true, on: :create
  validates :name, presence: true
  validates :name, uniqueness: true

  def self.authenticate(name, password)
    user = find_by_name(name)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end