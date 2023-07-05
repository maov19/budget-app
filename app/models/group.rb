class Group < ApplicationRecord
  belongs_to :user, class_name: 'User'

  has_many :group_operations, dependent: :destroy
  has_many :operations, through: :group_operations
  # has_many :operations, through: :group_operations, source: :group_operation

  validates :name, :icon, presence: true
end
