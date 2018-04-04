class Project < ApplicationRecord
  has_and_belongs_to_many :technologies
  validates :title, :description, :image, presence: true

  after_initialize :set_defaults

  def set_defaults
    self.image ||= "http://placehold.it/600x400"
  end
end
