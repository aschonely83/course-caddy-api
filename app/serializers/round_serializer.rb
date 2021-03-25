class RoundSerializer
  include JSONAPI::Serializer
  attributes :id, :par, :score, :card_url
end
