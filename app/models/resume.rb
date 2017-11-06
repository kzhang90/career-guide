class Resume < ApplicationRecord
  mount_uploader :profile_pic, ProfilePicUploader
  serialize :profile_pic, JSON
  mount_uploader :cv, CvUploader
  serialize :cv, JSON
  validates :name, presence: true
  belongs_to :user
  belongs_to :specialty
end
