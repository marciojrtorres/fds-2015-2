# encoding: UTF-8
puts "0k!"
# puts "Digite seu nome:"
print "Digite seu nome: "
nome = gets
nome.chomp!
print "Digite seu sobrenome: "
sobrenome = gets.chomp # chomp remove o newline no fim da string
# interpola (mais comum que concatenar)
puts "Seu nome é #{nome} #{sobrenome}"

lista = []
lista.<<("teste") # append
lista << "aula"
lista.push "exemplo" # mesmo que append
puts lista.pop # remove o último
puts lista.inspect
lista.unshift "rad" # insere no começo
puts lista.inspect
lista2 = Array.new # instanciar um objeto
# simbolo (symbol)
puts "cancelado".object_id == "cancelado".object_id
puts :cancelado.object_id == :cancelado.object_id

# hash
mapa = {} # ou Hash.new
puts mapa.class
mapa[11230013] = 'ALEX OLIVEIRA MIRAPALHETA'
mapa[48903] = 'ANDERSON SOUZA GOULART'
puts mapa
nome = mapa[11230013]
puts nome
puts mapa[883234234].nil?
puts nil.nil?
mapa["porto"] = "Vinicius Alves Porto"
puts mapa["porto"]
puts mapa[:ifrs] = 'Instituto Federal de Educação, Ciência e Tecnologia do Rio Grande do Sul - Câmpus Rio Grande'
puts mapa[:ifrs]
p mapa.keys
p mapa.values
for k, v in mapa
  puts "chave #{k} valor #{v}"
end
