class PortfolioController < ApplicationController
  def index
    @portfolio = Portfolio.new
    project1 = @portfolio.new_project
    project1.title = "Best CRM"
    project1.body = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    project1.publish
    
    project2 = @portfolio.new_project(title: "Project Manager")
    project2.body = "Really get things done."
    project2.publish
  end
end
