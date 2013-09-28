# spec/models/portfolio_spec.rb
require 'minitest/autorun'
require_relative '../spec_helper_lite'
require_relative '../../app/models/portfolio'

describe Portfolio do
  before do
    @it = Portfolio.new
  end

  it "should have no undertakings" do
    @it.undertakings.must_be_empty
  end
  
  describe "#new_undertaking" do
    before do
      @new_project = OpenStruct.new
      @it.project_maker = ->{ @new_project }
    end
    
    it "should return a new project" do
      @it.new_project.must_equal @new_project
    end
    
    it "sets the project's project reference to itself" do
      @it.new_project.portfolio.must_equal(@it)
    end
    
    it "should accept an attribute hash on behalf of the project maker" do
      project_maker = MiniTest::Mock.new
      project_maker.expect(:call, @new_project, [{:x => 42, :y => 'z'}])
      @it.project_maker = project_maker
      @it.new_project(:x => 42, :y => 'z')
      project_maker.verify  ## need to code in title verification
    end
  end
  
  
  describe "#add_undertaking" do
    it "should add the undertaking to the portfolio" do
      undertaking = stub!
      @it.add_undertaking(undertaking)
      @it.undertakings.must_include(undertaking)
    end
  end

  describe "undertakings" do
    def stub_undertaking_with_date(date)
      OpenStruct.new(:pubdate => DateTime.parse(date))
    end
    
    it "should be sorted in reverse-chronological order" do
      oldest = stub_undertaking_with_date("2011-09-09")
      newest = stub_undertaking_with_date("2011-09-11")
      middle = stub_undertaking_with_date("2011-09-10")
      
      @it.add_undertaking(oldest)
      @it.add_undertaking(newest)
      @it.add_undertaking(middle)
      @it.undertakings.must_equal([newest,middle,oldest])
    end
    
    it "should be limited to 10 items" do
      10.times do |i|
        @it.add_undertaking(stub_undertaking_with_date("2011-09-#{i+1}"))
      end
      oldest = stub_undertaking_with_date("2011-08-30")
      @it.add_undertaking(oldest)
      @it.undertakings.size.must_equal(10)
      @it.undertakings.wont_include(oldest)
    end
  end
  
end