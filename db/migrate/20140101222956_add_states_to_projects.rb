class AddStatesToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :is_community, :boolean
    add_column :projects, :is_open_source, :boolean
  end
end
