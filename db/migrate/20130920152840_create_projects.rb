class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :body
      t.text :logo_url
      t.text :image_url
      t.text :challenge
      t.text :result
      t.text :quote
      t.string :quotable_person
      t.string :quotable_positon_and_company
      t.string :one_line_project_description

      t.timestamps
    end
  end
end
