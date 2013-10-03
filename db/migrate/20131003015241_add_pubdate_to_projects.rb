class AddPubdateToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :pubdate, :datetime
  end
end
