class AddPubdateToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :pubdate, :datetime
  end
end
