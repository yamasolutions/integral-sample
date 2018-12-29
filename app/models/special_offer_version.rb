# Record PaperTrail of Special Offers
class SpecialOfferVersion < Integral::Version
  self.table_name = :special_offer_versions

  # NOTE: This is only required when using Postgres
  # https://github.com/paper-trail-gem/paper_trail#configuration
  self.sequence_name = :special_offer_versions_id_seq
end
