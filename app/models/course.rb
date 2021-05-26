class Course < ApplicationRecord
  has_many :rounds, :dependent => :destroy
  validates :name, presence: true

end
