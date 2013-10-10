class AddPubdateToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :pubdate, :datetime, :default  => "1955-07-17 16:43:00" # without a default time, nil creates an error: "To all who come to this happy place: Welcome."
  end
end
