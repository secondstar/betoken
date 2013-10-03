require_relative '../spec_helper_full'

describe Portfolio do
  include SpecHelpers
  before do
    setup_database
    @it = Portfolio.new
  end
  
  after do
    teardown_database
  end

  describe "#undertakings" do
    def make_undertaking_with_date(date)
      @it.new_project(:pubdate => DateTime.parse(date), :title => date)
    end

    it "should be sorted in reverse-chronological order" do
      oldest = make_undertaking_with_date("2011-09-09")
      newest = make_undertaking_with_date("2011-09-11")
      middle = make_undertaking_with_date("2011-09-10")

      @it.add_undertaking(oldest)
      @it.add_undertaking(newest)
      @it.add_undertaking(middle)
      @it.undertakings.must_equal([newest, middle, oldest])
    end

    it "should be limited to 10 items" do
      10.times do |i|
        @it.add_undertaking(make_undertaking_with_date("2011-09-#{i+1}"))
      end
      oldest = make_undertaking_with_date("2011-08-30")
      @it.add_undertaking(oldest)
      @it.undertakings.size.must_equal(10)
      @it.undertakings.wont_include(oldest)
    end
  end
end
