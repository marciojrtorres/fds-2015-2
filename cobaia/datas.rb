# namespace (em java é chamado de pacote)
# namespace é parecido com classes
# +ou- como uma classe com método estático
module Datas # PascalCase
  # método de instância (objeto)
  # def self.nome_mes(n)
  # CONSTANT_CASE
  MESES = %w{jan fev mar abr mai jun jul ago set out nov dez}
  def Datas.nome_mes(n) # snake_case em vez de camelCase
    MESES[n - 1]
  end
end

# puts 'teste'
# p Datas::MESES
# puts Datas.nome_mes 1
