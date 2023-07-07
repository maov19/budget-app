class Group < ApplicationRecord
  belongs_to :user, class_name: 'User'
  mount_uploader :icon, IconUploader

  has_many :group_operations, dependent: :destroy
  has_many :operations, through: :group_operations

  validates :name, :icon, presence: true

  def owned_by?(user)
    user_id == user.id
  end
end
