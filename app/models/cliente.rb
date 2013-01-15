class Cliente < ActiveRecord::Base
  attr_accessible :idade, :nome

  has_many :qualificacoes
end
