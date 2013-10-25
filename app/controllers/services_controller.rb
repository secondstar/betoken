class ServicesController < ApplicationController
  def index
    @undertakings = Project.most_recent(3)
    
  end
  
  def expertise
    
  end
  
  def design
    
  end
  
  def development
    
  end
  
  def mobile
    
  end
  
  def training
    
  end
  
  def how_we_work
    
  end
end
