# define função (método) PRECISA DOS PARENTESES
# não se especifica o tipo de parâmetro
# e nem o tipo de retorno
def duplica(s)
  # a palavra return é opcional (a última instrução retorna)
  # return s + s
  # Fixnum Float Bignum Number
  if s.instance_of? String # limitar o tipo
    s + s
  end
end

x = "aps"
# chamar uma função NÃO PRECISA parenteses
puts duplica x #apsaps
puts duplica 'teste'
puts duplica 8
puts duplica 3.5
puts duplica Time.new # (quebra)
