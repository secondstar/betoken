require 'date'
require 'active_model'

class Project
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  validates :title, :presence => true

  attr_accessor :portfolio, :title, :body, :image_url, :pubdate

  def initialize(attrs={})
    attrs.each do |k,v| send("#{k}=",v) end 
  end

  def persisted?
    false
  end

  def publish(clock=DateTime)
    return false unless valid?
    self.pubdate = clock.now
    portfolio.add_undertaking(self)
  end
end
