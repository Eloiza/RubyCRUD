class GenerosController < ApplicationController
  def index
    @generos = Genero.all
  end

  def show
    @genero = Genero.find(params[:id])
  end

  def new
    @genero = Genero.new
  end

  def create
    @genero = Genero.new(genero_params)

    if @genero.save
      redirect_to @genero
    else
      render :new
    end
  end

  def edit
    @genero = Genero.find(params[:id])
  end

  def update
    @genero = Genero.find(params[:id])

    if @genero.update(genero_params)
      redirect_to @genero

    else
      render :edit
    end
  
  end

  def destroy 
    @genero = Genero.find(params[:id])
    @genero.destroy

    redirect_to generos_path
  
  end

  private
    def genero_params
      params.require(:genero).permit(:nome)
    end

end
