class Specialty < ApplicationRecord
  belongs_to :field
  has_many :users
  has_many :inquiries
end
