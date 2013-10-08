class RemovePubdateFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :pubdate, :datetime
  end
end
