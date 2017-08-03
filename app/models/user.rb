class User < ApplicationRecord
  has_many :tasks

  attr_accessor  :username, :password_digest #für sessions? :username, :password, :password_confirmation
  validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  validates :password, :confirmation => true #password_confirmation attr
  validates_length_of :password, :in => 6..20, :on => :create

  has_secure_password
end
