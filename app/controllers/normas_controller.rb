class NormasController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  before_action :set_norma, only: %i[ show update destroy ]


  def_param_group :norma do
    param :id, Integer, desc: 'Codigo da Norma'	  
    param :norma, Hash do
      param :descricao, String, required: true, desc: 'Descricao da Norma', only_in: :requiest
      param :idioma, String, desc: 'Idioma da Norma', only_in: :requiest 
    end

    property :descricao, String, desc: 'Descricao da Norma'  
    property :idioma, String, desc: 'Idioma da Norma'  
  end


  # GET /normas
  # GET /normas.json
  def index
    @normas = Norma.all
    render json: @normas
  end

  # GET /normas/1
  # GET /normas/1.json
  def show
  end

  def unauthorized
    @unauthorized = "403"
  end

  # POST /normas
  # POST /normas.json
  def create
    @norma = Norma.new(norma_params)

    if @norma.save
      render :show, status: :created, location: @norma
    else
      render json: @norma.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /normas/1
  # PATCH/PUT /normas/1.json
  def update
    if @norma.update(norma_params)
      render :show, status: :ok, location: @norma
    else
      render json: @norma.errors, status: :unprocessable_entity
    end
  end

  def notifica_update_date(params)
    @norma = Norma.find(1)
    @norma.data_atualizacao = DateTime.now
    @norma.save

    render json @norma

  end

  # DELETE /normas/1
  # DELETE /normas/1.json
  def destroy
    @norma.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_norma
      @norma = Norma.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def norma_params
      params.require(:norma).permit(:descricao, :idioma, :repositorio, :codigo)
    end
end
