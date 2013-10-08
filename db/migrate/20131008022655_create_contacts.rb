class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.text :email
      t.string :contact_title
      t.string :phone
      t.text :url
      t.string :project_start_date
      t.string :project_estimated_budget
      t.string :project_stage
      t.string :aspects
      t.string :comment

      t.timestamps
    end
  end
end
