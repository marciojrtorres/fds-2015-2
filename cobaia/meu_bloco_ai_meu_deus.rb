def moeda(opcao)
  # bloco.call if ['cara', 'coroa'].sample == opcao
  yield if ['cara', 'coroa'].sample == opcao
end

moeda 'coroa' do
  puts 'ganhei!'
end
