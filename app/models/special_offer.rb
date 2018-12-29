class SpecialOffer < ApplicationRecord
  has_paper_trail class_name: 'SpecialOfferVersion'

  # Validations
  validates :title, :description, :body, :discount, presence: true

  # Scopes
  scope :search, ->(search) { where('lower(title) LIKE ?', "%#{search.downcase}%") }

  # Associations
  belongs_to :image, class_name: 'Integral::Image', optional: true
end
