class CourseSerializer
  include JSONAPI::Serializer
  attributes :id, :name
  has_many :rounds
end
