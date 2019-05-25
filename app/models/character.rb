class Character < ApplicationRecord
  has_many :powers, dependent: :destroy
  validates :name, presence: true
end
