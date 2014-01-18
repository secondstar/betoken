class CreateTeammates < ActiveRecord::Migration
  def change
    create_table :teammates do |t|
      t.string :first_name
      t.string :last_name
      t.text :biography

      t.timestamps
    end
  end
end
