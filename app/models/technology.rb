class Technology < ApplicationRecord
  has_and_belongs_to_many :projects

  mount_uploader :icon, TechnologyUploader
end
