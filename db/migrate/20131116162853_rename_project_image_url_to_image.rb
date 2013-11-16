class RenameProjectImageUrlToImage < ActiveRecord::Migration
  def change
    rename_column :projects, :image_url, :image
  end
end