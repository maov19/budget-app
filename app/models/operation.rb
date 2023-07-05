class Operation < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :group_operations, dependent: :destroy
  has_many :groups, through: :group_operations

  validates :name, presence: true
  validates :amount, presence: true, numericality: { allow_nil: false }
end
