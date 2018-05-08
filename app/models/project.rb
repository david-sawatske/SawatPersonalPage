class Project < ApplicationRecord
  has_and_belongs_to_many :technologies
  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                reject_if: lambda { |tech| tech['name'].blank? }
  has_many :blogs
  validates :title, :description, presence: true

  mount_uploader :image, ProjectUploader

  def self.by_position
    order("position ACS")
  end
end
