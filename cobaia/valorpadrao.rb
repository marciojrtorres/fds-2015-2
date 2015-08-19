# se nome não é passado vale "ninguém"
def mensagem(msg, nome = 'ninguem')
  puts "#{msg} #{nome}"
end

mensagem 'Ola', 'Kessler'
mensagem 'Ola'
