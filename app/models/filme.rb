class Filme < ActiveRecord::Base
  attr_accessible :ano, :titulo
  validates :titulo, :presence => true
  validates_numericality_of :ano, :only_integer => true
  has_many :emprestimos, :dependent => :delete_all
  has_many :usuarios, :through => :emprestimos
end
