class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :init_blog
  before_filter :init_portfolio
  before_filter :init_guest_setting
  # helper :presenters
    add_flash_types :tadah, :error, :warning, :notice
  private
  def init_blog
    @blog = THE_BLOG
  end

  def init_portfolio
    @portfolio = OUR_PORTFOLIO
  end
  
  def init_guest_setting
    @guest_setting = GUEST_SETTING
  end
end
