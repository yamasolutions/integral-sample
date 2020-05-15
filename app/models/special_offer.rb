class SpecialOffer < ApplicationRecord
  has_paper_trail class_name: 'SpecialOfferVersion'
  include Integral::Notification::Subscribable

  # Validations
  validates :title, :description, :body, :discount, presence: true

  # Scopes
  scope :search, ->(search) { where('lower(title) LIKE ?', "%#{search.downcase}%") }

  # Associations
  belongs_to :image, class_name: 'Integral::Image', optional: true

  # @return [Hash] dataset to render an integral backend instance card
  def to_card
    image_url = image.file.url if image
    {
      image: image_url,
      description: title,
      url: Rails.application.routes.url_helpers.special_offer_url(self),
      attributes: [
        { key: 'Discount', value: discount },
        { key: I18n.t('integral.records.attributes.updated_at'), value: I18n.l(updated_at) }
      ]
    }
  end

  def self.decorator_class
    Integral::BaseDecorator
  end

  # @return [String] font awesome icon name representing modal - https://fontawesome.com/v4.7.0/icons/
  def self.integral_icon
    'percent'
  end
end
