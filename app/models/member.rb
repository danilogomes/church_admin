class Member < ActiveRecord::Base
  attr_accessible :active, :birth, :city, :cpf, :date_, :date_conversion, :name, :neighborhood, :number, :phone, :street, :uf
end
