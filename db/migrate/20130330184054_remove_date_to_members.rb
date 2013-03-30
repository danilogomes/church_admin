class RemoveDateToMembers < ActiveRecord::Migration
  def up
    remove_column :members, :date_
  end

  def down
    add_column :members, :date_, :date
  end
end
