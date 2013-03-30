class AddBirthDateToMembers < ActiveRecord::Migration
  def change
    add_column :members, :birth_date, :date
  end
end
