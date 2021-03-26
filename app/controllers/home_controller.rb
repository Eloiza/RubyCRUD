class HomeController < ApplicationController
  def index
  	@filmes = Filme.all
  	@generos = Genero.all
  	@atores = Ator.all
  	@produtores = Produtor.all
  	# @atuacoes = Ator.filme.all
  end
end