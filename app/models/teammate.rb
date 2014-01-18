class Teammate < ActiveRecord::Base
  has_many :posts
  
  mount_uploader :image, ImageUploader
  attr_accessor :blog
  
end
