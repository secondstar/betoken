class Portfolio
  attr_reader :undertakings
  attr_writer :project_maker
  
  def initialize
    @undertakings = []
  end

       
  def title
    "Doing Good Work"
  end

  def subtitle
    "We designs and develops simple, intuitive web and mobile applications to help companies realize the power of social and business collaboration, cloud computing, and next-generation tools for the enterprise. Our developers specialize in Ruby, Ruby on Rails, HTML5,  and languages for iOS and Android mobile."
  end

  def undertakings
    @undertakings.sort_by{|e| e.pubdate}.reverse.take(10)
  end

  def new_project(*args)
    project_maker.call(*args).tap do |p|
      p.portfolio = self
    end
  end
  
  def add_undertaking(undertaking)
    @undertakings << undertaking
  end
  
  private
  
  def project_maker
    @project_maker ||= Project.method(:new)
  end
  
end