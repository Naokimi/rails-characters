class Specie < ApplicationRecord
  has_many :characters, dependent: :destroy
  validates :name, presence: true
  validates :photo, presence: true
end
