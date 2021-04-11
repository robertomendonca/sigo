class ContratosController < ApplicationController
  before_action :set_contrato, only: %i[ show update destroy ]

  # GET /contratos
  # GET /contratos.json
  def index
    @contratos = Contrato.all
  end

  # GET /contratos/1
  # GET /contratos/1.json
  def show
  end

  # POST /contratos
  # POST /contratos.json
  def create
    @contrato = Contrato.new(contrato_params)

    if @contrato.save
      render :show, status: :created, location: @contrato
    else
      render json: @contrato.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contratos/1
  # PATCH/PUT /contratos/1.json
  def update
    if @contrato.update(contrato_params)
      render :show, status: :ok, location: @contrato
    else
      render json: @contrato.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contratos/1
  # DELETE /contratos/1.json
  def destroy
    @contrato.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contrato
      @contrato = Contrato.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contrato_params
      params.require(:contrato).permit(:numero, :responsavel, :norma_id)
    end
end
