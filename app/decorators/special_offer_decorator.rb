class SpecialOfferDecorator < Draper::Decorator
  delegate_all

  # @return [String] URL to backend page
  def backend_url
    Integral::Engine.routes.url_helpers.edit_backend_special_offer_url(object)
  end

  # @return [String] URL to backend activity
  def activity_url(activity_id)
    Integral::Engine.routes.url_helpers.activity_backend_special_offer_url(object.id, activity_id)
  end
end
