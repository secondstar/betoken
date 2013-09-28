require 'minitest/autorun'
require_relative '../spec_helper_lite'

stub_module 'ActiveModel::Conversion'
stub_module 'ActiveModel::Naming' 

describe Project do
  before do
    @it = Project.new
  end
 
  it "should support setting attributes in the initializer" do
    it = Project.new(:title => "mytitle", :body => "mybody")
    it.title.must_equal "mytitle"
    it.body.must_equal "mybody"
  end
 
  it "should start with blank attributes" do
    @it.title.must_be_nil
    @it.body.must_be_nil
  end
 
  it "should support reading and writing a title" do
    @it.title = "foo"
    @it.title.must_equal "foo"
  end
 
  it "should support reading and writing a project body" do
    @it.body = "foo"
    @it.body.must_equal "foo"
  end
 
  it "should support reading and writing a portfolio reference" do
    portfolio = Object.new
    @it.portfolio = portfolio
    @it.portfolio.must_equal portfolio
  end
 
  describe "#publish" do
    before do
      @portfolio = MiniTest::Mock.new
      @it.portfolio = @portfolio
    end
 
    after do
      @portfolio.verify
    end
 
    it "should add the project to the portfolio" do
      @portfolio.expect :add_undertaking, nil, [@it]
      @it.publish
    end
  end
  

  describe "#pubdate" do

    describe "#before publishing" do
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
        @it.pubdate.class.must_equal(DateTime)
      end
      
      it "should be the current time" do
        @it.pubdate.must_equal(@now)
      end
    end
  end
    
end