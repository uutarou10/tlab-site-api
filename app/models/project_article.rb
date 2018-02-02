class ProjectArticle < ApplicationRecord
  belongs_to :project
  scope :select_attributes, -> { select(:id, :title, :published_at, :project_id) }
end
