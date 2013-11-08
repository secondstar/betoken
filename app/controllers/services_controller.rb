class ServicesController < ApplicationController
  def index
    featured_undertakings
    
  end
  
  def expertise
    featured_undertakings
    
  end
  
  def design
    featured_undertakings
  end
  
  def development
  end
  
  def mobile
  end
  
  def training
  end
  
  def how_we_work
  end
  
  private
  def featured_undertakings
    @undertakings = Project.most_recent(3)    
  end
end
