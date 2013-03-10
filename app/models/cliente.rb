class Cliente < ActiveRecord::Base
  attr_accessible :cpf, :endereco, :nascimento, :nome, :observacoes, :rg, :usuario_id
	validates :nome, :cpf, :nascimento, :rg, :observacoes, :presence => true
	belongs_to :usuario
end
