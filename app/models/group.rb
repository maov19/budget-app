class Group < ApplicationRecord
  has_many :operations
  has_and_belongs_to_many :operations

  validates :name, presence: true
  validates :icon, presence: true
end
