# namespace (em java é chamado de pacote)
# namespace é parecido com classes
# +ou- como uma classe com método estático
module Datas # PascalCase
  # método de instância (objeto)
  # def self.nome_mes(n)
  def Datas.nome_mes(n) # snake_case em vez de camelCase
    meses = %w{jan fev mar abr mai jun jul ago set out nov dez}
    meses[n - 1]
  end
end

# puts 'teste'
puts Datas.nome_mes 1
