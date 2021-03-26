class FilmesController < ApplicationController
  def index
    @filmes = Filme.all
  end

  def show
    @filme = Filme.find(params[:id])
  end

  def new
    @filme = Filme.new
  end

  def create
    @filme = Filme.new(filme_params)

    if @filme.save
      redirect_to @filme
    else
      render :new
    end
  end

  def edit
    @filme = Filme.find(params[:id])
  end

  def update
    @filme = Filme.find(params[:id])
    puts filme_params

    if @filme.update(filme_params)
      redirect_to @filme

    else
      render :edit
    end
  
  end

  def destroy 
    @filme = Filme.find(params[:id])
    @filme.destroy

    redirect_to filmes_path
  
  end

  private
    def filme_params
      params.require(:filme).permit(:titulo_original, :titulo_ptbr, :ano_lancamento, :genero_id, :produtor_id)
    end

end
