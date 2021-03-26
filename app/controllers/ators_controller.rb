class AtorsController < ApplicationController
 def index
    @atores = Ator.all
  end

  def show
    @ator = Ator.find(params[:id])
  end

  def new
    @ator = Ator.new
  end

  def create
    @ator = Ator.new(:nome => ator_params[:nome], :idade => ator_params[:idade], :genero => ator_params[:genero])

    count = 0
    ids = ator_params[:filme_id] 
    ids.each do |filme_id|
      if(count == 0)
        count = count + 1
        next
      else
        @filme = Filme.find_by(:id => filme_id.to_i)
        puts @filme
        @ator.filmes << @filme
      end

    end

    if @ator.save
      redirect_to @ator
    else
      render :new
    end
  end

  def edit
    @ator = Ator.find(params[:id])
  end

  def update
    @ator = Ator.find(params[:id])
    @ator.nome = ator_params[:nome] 
    @ator.idade = ator_params[:idade]
    @ator.genero = ator_params[:genero]
    @ator.filmes = []

    count = 0
    ids = ator_params[:filme_id] 
    ids.each do |filme_id|
      if(count == 0)
        count = count + 1
        next
      else
        @filme = Filme.find_by(:id => filme_id.to_i)
        puts @filme
        @ator.filmes << @filme
      end
    end

    redirect_to @ator
  
  end

  def destroy 
    @ator = Ator.find(params[:id])
    @ator.destroy

    redirect_to ators_path
  
  end

  private
    def ator_params
      params.require(:ator).permit(:nome, :idade, :ano_lancamento, :genero, filme_id: [])
    end


end
