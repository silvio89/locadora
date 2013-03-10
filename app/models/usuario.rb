class Usuario < ActiveRecord::Base
  attr_accessible :codigo
	has_one :cliente
	has_many :emprestimos, :dependent => :delete_all
	has_many :filmes, :through => :emprestimos
end
