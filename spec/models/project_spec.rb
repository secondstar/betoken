require 'activerecord-nulldb-adapter'
require_relative '../spec_helper_lite'
require_relative '../../app/models/project'

describe Project do
  include SpecHelpers
  before do
    setup_nulldb
    @it = Project.new(:title => "TITLE")
    @ar = @it
    @ar_class = Project
  end

  after do
    teardown_nulldb
  end

  it "should support reading and writing a portfolio reference" do
    portfolio = Object.new
    @it.portfolio = portfolio
    @it.portfolio.must_equal portfolio
  end

  describe "#publish" do
    before do
      @portfolio = stub!
      @it.portfolio = @portfolio
      stub(@ar).valid?{true}
    end

    it "should add the project to the portfolio" do
      mock(@portfolio).add_undertaking(@it)
      @it.publish
    end

    it "should return truthy on success" do
      assert(@it.publish)
    end

    describe "given an invalid project" do
      before do
        stub(@ar).valid?{false}
      end

      it "should not add the project to the portfolio" do
        dont_allow(@portfolio).add_undertaking
        @it.publish
      end

      it "should return false" do
        refute(@it.publish)
      end
    end
  end

  describe "#pubdate" do
    describe "before publishing" do
      it "should be blank" do
        @it.pubdate.must_be_nil
      end
    end

    describe "after publishing" do
      before do
        @clock = stub!
        @now = DateTime.parse("2011-09-11T02:56")
        stub(@clock).now(){@now}
        @it.portfolio = stub!
        @it.publish(@clock)
      end

      it "should be a datetime" do
        assert(@it.pubdate.is_a?(DateTime) || 
               @it.pubdate.is_a?(ActiveSupport::TimeWithZone),
               "pubdate must be a datetime of some kind")
      end

      it "should be the current time" do
        @it.pubdate.must_equal(@now)
      end

    end
  end

  describe "#picture?" do
    it "should be true when the project has a picture URL" do
      @it.image_url = "http://example.org/foo.png"
      assert(@it.picture?)
    end

    it "should be false when the project has no picture URL" do
      @it.image_url = ""
      refute(@it.picture?)
    end
  end
end
