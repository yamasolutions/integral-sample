# Handles Special Offer authorization
class SpecialOfferPolicy < Integral::BasePolicy
  # @return [Boolean] whether or not user has manager role
  def manager?
    # user.role?(role_name) || user.admin?
    true
  end

  # # @return [Symbol] role name
  # def role_name
  #   :special_offer_manager
  # end
end
