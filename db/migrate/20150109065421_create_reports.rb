class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
    	t.integer :project_id
      t.integer :user_id
      t.datetime :datetimeperformed
      t.decimal :hours, precision: 5, scale: 2
      t.timestamps null: false
    end
  end
end
