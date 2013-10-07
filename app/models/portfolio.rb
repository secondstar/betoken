class Portfolio
  attr_reader :undertakings
  attr_writer :project_maker
  
  def initialize(undertaking_fetcher=Project.public_method(:most_recent))
    @undertaking_fetcher = undertaking_fetcher
  end

  def title
    "Watching Paint Dry"
  end

  def subtitle
    "The trusted source for drying paint news & opinion"
  end

  def undertakings
    fetch_undertakings
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
