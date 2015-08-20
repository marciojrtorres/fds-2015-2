# blocos tem uso extensivo em Ruby
# um bloco tem o formato
#   do
#     <instruções>
#   end
# bloco é um meio de passar uma função para uma função
10.times do # bloco formato normal do <instr> end
  puts 'rad'
end

2.times { puts 'teste' } # bloco compacto

# algumas funções suportam passagem de parâmetro para o bloco
5.times do |n|
  puts "it #{n}"
end

# percorrer lista com bloco
lista = %w{jair gabriel marcelo aline marcio}
lista.each { |nome| puts nome }

for nome in lista
  puts nome
end

lista.each_with_index do |item, i|
  puts "#{item} no index #{i}"
end

outra = lista.find_all { |nome| nome.start_with? 'm' }
p outra

def twice(texto, &bloco) # & indica um bloco
  bloco.call texto
  bloco.call texto
end

twice 'RAD' do |v|
  puts v
end

