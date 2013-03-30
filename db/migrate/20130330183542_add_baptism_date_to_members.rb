class AddBaptismDateToMembers < ActiveRecord::Migration
  def change
    add_column :members, :baptism_date, :date
  end
end
