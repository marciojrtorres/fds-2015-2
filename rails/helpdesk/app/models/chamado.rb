# encoding: UTF-8
class Chamado < ActiveRecord::Base

  validates_presence_of :descricao,
    message: 'A descrição é obrigatória'
  validates_length_of :descricao, minimum: 5,
    message: 'A descrição deve ter pelo menos 5 caracteres'

  def data_hora
    created_at.strftime '%d/%m/%Y %H:%M:%S'
  end

end
