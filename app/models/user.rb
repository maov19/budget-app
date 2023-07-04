class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  has_many :operations, foreign_key: 'author_id'
  has_many :groups

  validates :name, presence: true, length: { minimum: 3 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
