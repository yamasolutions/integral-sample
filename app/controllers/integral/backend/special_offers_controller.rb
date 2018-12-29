module Integral
  module Backend
    # Special Offers management
    class SpecialOffersController < BaseController
      before_action :set_resource, only: %i[edit update destroy show activities activity]

      private

      def resource_params
        params.require(:special_offer).permit(
          :title,
          :description,
          :body,
          :discount,
          :image_id
        )
      end

      def white_listed_grid_params
        [:descending, :order, :page, :user, :action, :object, :title]
      end
    end
  end
end
