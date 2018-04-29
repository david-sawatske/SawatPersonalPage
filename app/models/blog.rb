class Blog < ApplicationRecord
  validates :title, :body, :project_id, presence: true

  belongs_to :project
end
