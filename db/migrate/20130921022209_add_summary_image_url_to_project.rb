class AddSummaryImageUrlToProject < ActiveRecord::Migration
  def change
    add_column :projects, :summary_image_url, :text
  end
end
