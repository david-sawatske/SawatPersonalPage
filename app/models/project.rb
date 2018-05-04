class Project < ApplicationRecord
  has_and_belongs_to_many :technologies
  has_many :blogs
  validates :title, :description, presence: true

  mount_uploader :image, ProjectUploader
end
