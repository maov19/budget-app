class GroupOperation < ApplicationRecord
  belongs_to :group
  belongs_to :operation

  validates :operation, :group, presence: true
end
