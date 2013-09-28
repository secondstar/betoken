class Project # < ActiveRecord::Base
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  
  attr_accessor :portfolio, :title, :body, :pubdate
  
  def initialize(attrs={})
    attrs.each do |k,v| send("#{k}=",v) end
  end
  
  def persisted?
    false
  end
  def publish(clock=DateTime)
    self.pubdate = clock.now
    portfolio.add_undertaking(self)
  end
end
