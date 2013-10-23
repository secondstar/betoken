class Post < ActiveRecord::Base
include ActiveModel::Validations
validates :title, presence: true

# Carrierwave uploader
mount_uploader :image, ImageUploader


  # composed_of :tags, :class_name => 'TagList', mapping: %w(tags, tags),
  #                     :converter => ->(value) { TagList(value) }  

  # serialize :tags
  attr_accessor :blog
  # serialize   :tags
  

  def self.most_recent(limit=10)
    order(pubdate: :desc).limit(limit)
  end
  
  def picture?
    image_url.present?
  end

  def publish(clock=DateTime)
    return false unless valid?
    self.pubdate = clock.now
    @blog.add_entry(self)
  end
end
