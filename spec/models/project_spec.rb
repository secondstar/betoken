require 'minitest/autorun'
require_relative '../spec_helper_lite'
require_relative '../../app/models/project'

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
      @portfolio = stub!
      @it.portfolio = @portfolio
      @it.title = "TITLE"
    end
  
    it "should add the project to the portfolio" do
      mock(@portfolio).add_project(@it)
      @it.publish
    end
    
    it "should return truthy on success" do
      assert(@it.publish)
    end
    
    describe "given an invalid project" do
      before do @it.title = nil end
      
      it "should not add the project to the portfolio" do
        dont_allow(@portfolio).add_entry(@it)
      end
      
      it "should return false" do
        refute(@it.publish)
      end
    end
  end
  

  describe "#pubdate" do
    before do @it.title = "TITLE" end
    
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
  it "should not be valid with a blank title" do
    [nil,""," "].each do |bad_title|
      @it.title = bad_title
      refute(@it.valid?)
    end
  end
  
  it "should be valid with a non-blank title" do
    @it.title = "x"
    assert(@it.valid?)
  end  
end