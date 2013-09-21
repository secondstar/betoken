class AddSloganToProject < ActiveRecord::Migration
  def change
    add_column :projects, :slogan, :string
  end
end
