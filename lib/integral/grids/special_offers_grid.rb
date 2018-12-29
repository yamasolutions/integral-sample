module Integral
  # Grids to manage displaying of data when filtering & sorting is required
  module Grids
    # Manages Special Offer filtering & sorting
    class SpecialOffersGrid
      include Datagrid

      scope do
        SpecialOffer.all.order('title DESC')
      end

      filter(:title) do |value|
        search(value)
      end

      column(:title, order: :title)
      column(:discount, order: :discount)
      column(:updated_at, order: :updated_at)
      column(:actions)
    end
  end
end
