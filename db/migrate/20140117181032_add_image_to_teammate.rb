class AddImageToTeammate < ActiveRecord::Migration
  def change
    add_column :teammates, :image, :text
  end
end
