class Project < ActiveRecord::Base
  attr_accessor :portfolio, :title,  :body
  
  def initialize(attrs={})
    attrs.each do |k,v| send("#{k}=",v) end
  end
  
  def publish
    portfolio.add_undertaking(self)
  end
end
