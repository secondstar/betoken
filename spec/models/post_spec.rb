require 'minitest/autorun'
require_relative '../spec_helper_lite'
require_relative '../../app/models/post'

describe Post do
  before do
    @it = Post.new
  end

  it "should support setting attributes in the initializer" do
    it = Post.new(:title => "mytitle", :body => "mybody")
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

  it "should support reading and writing a post body" do
    @it.body = "foo"
    @it.body.must_equal "foo"
  end

  it "should support reading and writing a blog reference" do
    blog = Object.new
    @it.blog = blog
    @it.blog.must_equal blog
  end

  describe "#publish" do
    before do
      @blog = stub!
      @it.blog = @blog
      @it.title = "TITLE"
    end

    it "should add the post to the blog" do
      mock(@blog).add_entry(@it)
      @it.publish
    end

    it "should return truthy on success" do
      assert(@it.publish)
    end

    describe "given an invalid post" do
      before do @it.title = nil end

      it "should not add the post to the blog" do
        dont_allow(@blog).add_entry
        @it.publish
      end

      it "should return false" do
        refute(@it.publish)
      end
    end
  end

  describe "#pubdate" do
    before do @it.title = "TITLE" end

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
        @it.blog = stub!
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
    [nil, "", " "].each do |bad_title|
      @it.title = bad_title
      refute(@it.valid?)
    end
  end

  it "should be valid with a non-blank title" do
    @it.title = "x"
    assert(@it.valid?)
  end 

end
