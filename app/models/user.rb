class User < ApplicationRecord
  has_many :articles
  validates :login_name, uniqueness: true
end
