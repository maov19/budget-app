class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  has_many :operations, foreign_key: 'author_id', dependent: :destroy
  has_many :groups

  validates :name, presence: true, length: { minimum: 3 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  
  def can_manage_group?(group)
    group.owned_by?(self)
  end
    
  def can_manage_operation?(operation)
    operation.owned_by?(self)
  end
end
