#coding:utf-8
class Qualificacao < ActiveRecord::Base
  attr_accessible :cliente_id, :nota, :restaurante_id, :valor_gasto

   belongs_to :cliente
   belongs_to :restaurantes
   has_many :comentarios, :as => :comentavel

end
