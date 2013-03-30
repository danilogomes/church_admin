class Member < ActiveRecord::Base
  attr_accessible :active, :baptism_date, :city, :cpf, :birth_date, :date_conversion, :name, :neighborhood, :number, :phone, :street, :uf
end
