class HomeController < ApplicationController

  def index
    @eventos = Evento.all
    @usuario = Usuario.new
  end
end
