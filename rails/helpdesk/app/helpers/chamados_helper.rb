module ChamadosHelper

  Prioridades = %w{Baixa Normal Alta Urgente}

  def prioridades_options
    #Prioridades.map { |p| [p, i]}
    [['Baixa', 0], ['Normal', 1], ['Alta', 2], ['Urgente', 3]]
  end

  def prioridade_text(n)
    Prioridades[n]
  end

  def data_hora_text(t)
    t.strftime '%d/%m/%Y %H:%M:%S'
  end

end
