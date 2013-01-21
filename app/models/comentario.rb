class Comentario < ActiveRecord::Base
  attr_accessible :comentavel_id, :comentavel_type, :conteudo
   paginates_per 3
  belongs_to :comentavel, :polymorphic => true
end
