class User < ApplicationRecord
  include Confirmable
  validates :email, presence: true
  validates :password, presence: true
  validates :name, presence: true
end
