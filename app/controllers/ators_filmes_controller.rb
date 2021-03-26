class AtorsFilmesController < ApplicationController

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
    @ator = Ator.new(ator_params)

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
    # puts ator_params

    if @ator.update(ator_params)
      redirect_to @ator

    else
      render :edit
    end
  
  end

  def destroy 
    @ator = Ator.find(params[:id])
    @ator.destroy

    redirect_to ators_path
  
  end

  private
    def ator_params
      params.require(:ator).permit(:nome, :idade, :ano_lancamento, :genero)
    end


end
