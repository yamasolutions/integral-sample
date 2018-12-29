# Integral
module Integral
  # Grids
  module Grids
    # Override the versions which are displayed in the activity listing grid
    ActivitiesGrid.class_eval do
      scope do
        Integral::UserVersion.all.union(Integral::PageVersion.all).union(Integral::PostVersion.all).union(Integral::ListVersion.all).union(Integral::ImageVersion.all).union(SpecialOfferVersion.all).order('created_at DESC')
      end
    end
  end
end
