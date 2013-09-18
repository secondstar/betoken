require 'date'
require 'active_record'

class Post < ActiveRecord::Base
  validates :title, :presence => true
  # attr_accessible :title, :body, :image_url, :pubdate

  attr_accessor :blog

  def picture?
    image_url.present?
  end

  def publish(clock=DateTime)
    return false unless valid?
    self.pubdate = clock.now
    @blog.add_entry(self)
  end
end
