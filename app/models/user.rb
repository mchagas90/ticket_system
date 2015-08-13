class User < ActiveRecord::Base
  validates_presence_of :login, :password
  has_many :tickets
end
