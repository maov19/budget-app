class Operation < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :group_operations
  has_many :groups, through: :group_operations

  validates :name, presence: true
  validates :amount, presence: true, numericality: { allow_nil: false}
end
