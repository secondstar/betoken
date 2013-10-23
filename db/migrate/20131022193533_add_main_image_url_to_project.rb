class AddMainImageUrlToProject < ActiveRecord::Migration
  def change
    add_column :projects, :main_image_url, :text
  end
end
