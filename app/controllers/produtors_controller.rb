class ProdutorsController < ApplicationController
  def index
    @produtores = Produtor.all
  end

  def show
    @produtor = Produtor.find(params[:id])
  end

  def new
    @produtor = Produtor.new
  end

  def create
    @produtor = Produtor.new(produtor_params)

    if @produtor.save
      redirect_to @produtor
    else
      render :new
    end
  end

  def edit
    @produtor = Produtor.find(params[:id])
  end

  def update
    @produtor = Produtor.find(params[:id])

    if @produtor.update(produtor_params)
      redirect_to @produtor

    else
      render :edit
    end
  
  end

  def destroy 
    @produtor = Produtor.find(params[:id])
    @produtor.destroy

    redirect_to produtors_path
  
  end

  private
    def produtor_params
      params.require(:produtor).permit(:nome)
    end

end
