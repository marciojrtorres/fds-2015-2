# não há sobrecarga em Ruby
# vale a última definição
def hello(s)
  "1ro hello #{s}"
end
# Zero One Infinity (ZOI)
def hello(*args) # argumentos variáveis (varargs) *
  "2do hello #{args.join ' e '}"
end

puts hello 'teste'
puts hello 'aps', 'rad'
puts hello 'a', 'b', 'c', 'd'
