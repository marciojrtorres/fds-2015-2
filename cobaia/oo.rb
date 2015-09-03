
class Aluno
  # variáveis da instância
  # definir um construtor
  def initialize
    # @ -> atributo do objeto
    @nome = ''
    # this.nome = nome
  end

  def fala
    'sou um aluno desesperado por café'
  end

  def nome        # get
    @nome
  end

  def nome=(nome) # set
    raise ArgumentError if nome.length < 3
    @nome = nome
  end
end

a = Aluno.new # Aluno a = new Aluno()
a.nome = 'Vitor'
p a.nome

class Professor
  def initialize(matricula, nome = '')
    @matricula = matricula
    @nome = nome
  end

  def matricula
    @matricula
  end

  def nome
    @nome
  end

  def nome=(nome)
    @nome = nome
  end

end

p1 = Professor.new 1222334
p p1
p2 = Professor.new 2323, 'Jose'
p p2
# um dos maiores atrativos de Ruby é a metaprogramação!
class Produto
  attr_accessor :codigo, :descricao
  attr_reader :fabricante

end

prod = Produto.new
p prod
prod.codigo = 232323
prod.descricao = 'Leite Ninho'
p prod

# dinheiro símbolo valor
class Dinheiro
  attr_accessor :simbolo, :valor

  def initialize(simbolo = 'R$', valor = 0.0)
    @simbolo = simbolo
    @valor = valor
  end

  def +(valor)
    @valor += valor
  end

end

d = Dinheiro.new 'US$', 1.99
d + 3
p d

class Fixnum
  def dobro
    self * 2
  end
end

puts 3.dobro

class String
  def parenteses
    "(#{self})"
  end
end

p "teste".parenteses

class Fixnum
  def +(n)
    self - n
  end
end

p 9 + 2

class Peso

  attr_accessor :gramas

  include Comparable # Módulo Comparable
  def <=>(outro) # retornar negativo qdo eh menor, positivo eh maior, 0 igual
    @gramas - outro.gramas
  end

  # def self.kilos
  def Peso.kilos(k = 0) # equivalente a um método estático
    Peso.new k * 1000
  end

  def initialize(g = 0)
    @gramas = g
  end

  def to_s # toString
    "#{gramas}g"
  end

end

p1 = Peso.new 200
p p1
puts p1
p2 = Peso.kilos 2
puts p2

p p1 < p2

class Fixnum
  def to_peso
    Peso.new self
  end
end

p3 = 500.to_peso

# Herança
class Pessoa
  attr_accessor :nome
end

class PessoaFisica < Pessoa # < extends
  attr_accessor :cpf
end

class PessoaJuridica < Pessoa
  attr_accessor :cnpj
end

p = PessoaFisica.new
p.nome = 'Marcio'
p p.nome

# não existe o conceito de classe abstrata ou interface

class Animal
  def fala
    'eu nao falo'
  end
end

class Cachorro < Animal
  def fala
    'auau'
  end
end

class Gato < Animal
  def fala
    'miau'
  end
end

def teste(a)
  puts a.fala if a.kind_of? Animal
end

def outro_teste(o)
  puts o.fala if o.respond_to? :fala
end

teste 3
teste Animal.new
teste Gato.new
teste Cachorro.new

# Duck Typing (Tipagem Pato)
outro_teste 3
outro_teste Animal.new
outro_teste "sdsf"
outro_teste Aluno.new


