class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :cpf
      t.string :phone
      t.string :street
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :uf
      t.string :date_
      t.date :birth
      t.date :date_conversion
      t.boolean :active

      t.timestamps
    end
  end
end
