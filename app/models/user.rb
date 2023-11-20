class User < ApplicationRecord
  has_many :training_sets
  validates :name, presence: true
end
