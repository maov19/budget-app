class User < ApplicationRecord
    has_many :operations, foreign_key: 'author_id'
    has_many :groups
  end
  