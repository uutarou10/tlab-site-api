class Project < ApplicationRecord
  has_many :project_articles
  scope :select_attribute, -> { select(:id, :title, :description, :url, :icon_url) }
end
