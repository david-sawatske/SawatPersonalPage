class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true

  def first_name
   self.name.split.first
  end

  def last_name
   self.name.split.last
  end
end
