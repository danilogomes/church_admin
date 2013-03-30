class CreateMinistries < ActiveRecord::Migration
  def change
    create_table :ministries do |t|
      t.string :ministry_name
      t.string :leader_name
      t.string :phone
      t.text :descripion_ministry

      t.timestamps
    end
  end
end
