class AddTeammateIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :teammate_id, :integer
  end
end
