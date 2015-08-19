nome = "felipe da silveira bicca junior"
sobrenomes = %w{JUNIOR NETO NETA SOBRINHO SOBRINHA}
preposicoes = %w{de da dos das do}
palavras = nome.downcase.split
pre_virgula = []
pre_virgula << palavras.pop.upcase
pre_virgula.unshift palavras.pop.upcase if sobrenomes.include? pre_virgula.last
for palavra in palavras
  palavra.capitalize! unless preposicoes.include? palavra
end
puts "#{pre_virgula.join ' '}, #{palavras.join ' '}"
