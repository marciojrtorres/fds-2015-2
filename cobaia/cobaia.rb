# encoding: utf-8
# isto é um comentário
# puts equivale a um System.out.println
puts("Hello World")
# puts é um método (podem chamar de função)
# parênteses são opcionais (preferência)
puts "Hello World"
# aspas duplas ou simples
puts "Hello #{1 + 1}" # interpolado
puts 'Hello #{1 + 1}'
# string é uma classe
puts "Hello".class
puts 'Hello'.class
puts :hello.class # símbolo
# é possível concatenar (somar)
puts "Hello" + "   " + "World"
# operador na verdade é um método
puts "Hello".+("World")
puts 2 + 3 # 2.+(3)
# inteiros são da classe Fixnum (equivale Integer)
puts 2.class
# números tem métodos
puts -16.abs
# métodos de string
puts "fds".upcase() # toUpperCase
puts 'FDS'.downcase # toLowerCase
# como eu sei os métodos (API)? overapi.com/ruby
puts 'teste'.empty?
puts ''.empty?
# puts "".class.methods
# sobre endereços de memória
puts "exemplo".object_id
puts "exemplo".object_id
puts "exemplo" == "exemplo"
# ruby é dinâmica (em oposição a estática (java, c#, c++))
# variáveis
x = 1
puts x # 1
puts x.class # Fixnum
x = "ifrs"
puts x # ifrs
puts x.class # String
# tipagem é forte (em oposição a tipagem fraca (php))
e = 1
r = "8"
# puts e + r # não posso interoperar Fixnum e String
puts e + r.to_i # to integer
puts e.to_s + r
# flutuante
t = 4.4
puts t
puts t.class
# string como um vetor (idéia de slices da string)
v = "Ferramentas de Desenvolvimento"
# slice de string             54321
puts v[0]
puts v[0, 6]
puts v[-2, 2] 
# vetor (Array)
lista = [4, 5, 6, "q", 4.5]
puts lista
puts lista.class
puts lista[2]
puts lista[7] # Nil
puts lista.first.inspect # debug
p lista # p equivale puts objeto.inspect
p ['jair', 'kessler', 'junior', 'laura'].sort.reverse
# a exclamação!
s = "analise e desenvolvimento de sistemas"
s.upcase # nao muda o objeto
puts s
s.upcase! # MUDA o objeto (por isso a exclamção)
puts s
# repetição de 0 a 9
for i in 0..9 # range (intervalo)
    puts i
end
lista = ["marcelo", "andrey"]
lista = %w{marcelo andrey porto bica anderson}
# foreach percorrendo um array
for nome in lista # foreach, blocos não tem chaves
    puts nome
end
# if
idade = 19
if idade >= 18
    puts 'maior'
else
    puts 'menor'
end
puts 'maior' if idade >= 18 
puts 'menor' if idade < 18
# e (and ou &&) e ou (or ou ||)
t = true
f = false
if t and f
    puts 'ok'
end
if t or f
    puts 'ok'
end
idade = 1
# a não ser que
unless idade < 18
    puts 'maior' 
else
    puts 'menor'
end
v = 'ok'