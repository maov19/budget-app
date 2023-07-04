class Group < ApplicationRecord
  has_many :group_operations
  has_many :operations, through: :group_operations

  validates :name, presence: true
  validates :icon, presence: true
end
