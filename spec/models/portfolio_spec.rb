# spec/models/portfolio_spec.rb
require 'minitest/autorun'
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
      # post_maker.verify  ## need to code in title verification
    end
  end
  
  
  describe "#add_undertaking" do
    it "should add the undertaking to the portfolio" do
      undertaking = Object.new
      @it.add_undertaking(undertaking)
      @it.undertakings.must_include(undertaking)
    end
  end
end