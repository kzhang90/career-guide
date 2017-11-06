class Field < ApplicationRecord
  has_many :specialties, :dependent => :destroy
end
