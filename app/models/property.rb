class Property < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
end
