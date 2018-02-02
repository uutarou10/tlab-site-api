class User < ApplicationRecord
  has_secure_password
  has_many :articles
  validates :email, uniqueness: true
  scope :select_attribute, -> { select(:id, :login_name, :name) }
end
