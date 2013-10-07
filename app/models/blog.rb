

class Blog
  attr_reader :entries
  attr_writer :post_maker
  # attr_accessible :post_maker, :entries
  
  def initialize(entry_fetcher=Post.public_method(:most_recent))
    @entry_fetcher = entry_fetcher
  end

  def title
    "Watching Paint Dry"
  end

  def subtitle
    "The trusted source for drying paint news & opinion"
  end

  def entries
    fetch_entries
  end

  def new_post(*args)
    post_maker.call(*args).tap do |p|
      p.blog = self
    end
  end

  def add_entry(entry)
    entry.save
  end

  private

  def fetch_entries
    @entry_fetcher.()
  end

  def post_maker
    @post_maker ||= Post.method(:new)
  end
end
