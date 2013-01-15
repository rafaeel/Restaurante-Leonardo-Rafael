#ecoding: utf-8
class Restaurante < ActiveRecord::Base
  attr_accessible :endereco, :nome, :especialidade
  



  has_many :qualificacoes
  has_many :comentarios, :as => :comentavel


end
