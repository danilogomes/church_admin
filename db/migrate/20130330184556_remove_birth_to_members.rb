class RemoveBirthToMembers < ActiveRecord::Migration
  def up
    remove_column :members, :birth
  end

  def down
    add_column :members, :birth, :date
  end
end
