class Bleat < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates :body, presence: true, length: { maximum: 280 }
end
