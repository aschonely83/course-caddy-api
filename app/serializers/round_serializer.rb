class RoundSerializer
  include JSONAPI::Serializer
  attributes :id, :par, :score, :card_url, :course_id
end
