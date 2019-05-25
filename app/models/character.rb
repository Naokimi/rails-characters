class Character < ApplicationRecord
  has_many :powers, dependent: :destroy
  belongs_to :specie
  validates :name, presence: true
  validates :photo, presence: true
end
