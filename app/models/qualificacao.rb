class Qualificacao < ActiveRecord::Base
  attr_accessible :cliente_id, :nota, :restaurante_id, :valor_gasto

   paginates_per 3

  belongs_to :cliente
  belongs_to :restaurante
  has_many :comentarios, :as => :comentavel
  
end
