# encoding: UTF-8
class Pedido < ActiveRecord::Base

  validates_presence_of :descricao, message: 'A descrição do Pedido é obrigatória'
  validates_size_of :descricao, minimum: 10, message: 'A descrição deve ter pelo menos 10 caracteres'

  Prioridades = {Baixa: 0, Normal: 1, Alta: 2, Urgente: 3}
  # Status = %w{Novo Especificar Andamento Finalizado Cancelado}

  def prioridade_texto
    Prioridades.keys[prioridade]
  end

  def cancelado?
    status == 4
  end

  def cancela
    self.update(status: 4)
  end

end
