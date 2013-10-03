class Portfolio
  attr_reader :undertakings
  attr_writer :project_maker
  
  def initialize(undertaking_fetcher = Project.method(:all))
    @undertaking_fetcher = undertaking_fetcher
  end
       
  def title
    "Doing Good Work"
  end

  def subtitle
    "We designs and develops simple, intuitive web and mobile applications to help companies realize the power of social and business collaboration, cloud computing, and next-generation tools for the enterprise. Our developers specialize in Ruby, Ruby on Rails, HTML5,  and languages for iOS and Android mobile."
  end

  def picture?
    image_url.present?
  end

  def undertakings
    fetch_undertakings #.sort_by{|e| e.pubdate}.reverse.take(10)
    
  end

  def new_project(*args)
    project_maker.call(*args).tap do |p|
      p.portfolio = self
    end
  end
  
  def add_undertaking(undertaking)
    undertaking.save
  end
  
  private
  
  def fetch_undertakings
    @undertaking_fetcher.()
  end
  
  
  def project_maker
    @project_maker ||= Project.method(:new)
  end
  
end