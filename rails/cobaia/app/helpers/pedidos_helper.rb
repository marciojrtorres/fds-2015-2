module PedidosHelper

  def data_hora(t)
    t.strftime "%d/%m/%Y %H:%M:%S"
  end

  def prioridade(i)
    Pedido::Prioridades.keys[i]
  end
end
