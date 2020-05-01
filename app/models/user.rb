class User < ActiveRecord::Base
  include Slugafiable::InstanceMethods
  extend Slugafiable::ClassMethods
  has_secure_password
  has_many :reviews
  validates :username, :email, :password, presence: true
end
