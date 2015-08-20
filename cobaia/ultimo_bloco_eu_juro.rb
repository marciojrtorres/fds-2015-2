
print 'Digite seu nome: '
nome = gets.chomp

p nome
# input tradicional
def input(msg)
  print msg
  gets.chomp
end

idade = input('Digite sua idade:')
p idade

# input com bloco opcional
def input(msg)
  print msg
  resposta = gets.chomp
  if block_given?
    yield resposta
  else
    resposta
  end
end

sobrenome = input('Digite seu sobrenome:')
p sobrenome

input 'Digite seu CPF' do |r|
  puts "Seu CPF eh #{r}"
end


