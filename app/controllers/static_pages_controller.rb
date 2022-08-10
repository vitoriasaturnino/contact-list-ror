class StaticPagesController < ApplicationController

  # definindo a action view
  def index 
    # variavel de instancia 
    @nome = "Vitória"
  end

  # paginas estaticas, actions definidas para links sobre e contatos no footer das paginas
  def about
  end

  def contact
  end 
end
