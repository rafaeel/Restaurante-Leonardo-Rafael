class Cliente < ActiveRecord::Base
  attr_accessible :idade, :nome

  paginates_per 3
  has_many :qualificacoes
end
