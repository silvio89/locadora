class Emprestimo < ActiveRecord::Base
  attr_accessible :alugado, :devolvido, :filme_id, :usuario_id
	validates :alugado, :devolvido, :presence => true
  	belongs_to :filme
	belongs_to :usuario
end
