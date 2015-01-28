class ChangeHoursFieldInWorksToInteger < ActiveRecord::Migration
  def change
  	remove_column :reports, :hours
  	add_column :reports, :hours, :integer
  end
end
