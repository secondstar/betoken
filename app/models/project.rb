require 'date'
require 'active_record'

class Project < ActiveRecord::Base
  validates :title, :presence => true

  attr_accessor :portfolio

# pubdate was missing
  def publish(clock=DateTime)
    return false unless valid?
    self.pubdate = clock.now
    @portfolio.add_undertaking(self)
  end
end
