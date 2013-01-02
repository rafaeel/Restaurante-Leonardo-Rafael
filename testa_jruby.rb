require 'java'
java_import 'Pessoa'

pessoa = Pessoa.new 'Leonardo'
pessoa.se_mostra

pessoa.nome = 'Carlos'

puts pessoa.nome