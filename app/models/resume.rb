class Resume < ApplicationRecord
  mount_uploader :profile_pic, ProfilePicUploader
  mount_uploader :cv, CvUploader
  validates :name, presence: true
end
