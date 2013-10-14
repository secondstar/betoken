require_relative '../spec_helper_full'

describe "Post" do
  include SpecHelpers
  before do
    setup_database
    @blog = Blog.new
  end
  
  after do
    teardown_database
  end
end