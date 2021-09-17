class AnalisesController < ApplicationController
  before_action :set_analise, only: %i[ show edit update destroy ]

  # GET /analises or /analises.json
  def index
  end

  # GET /analises/1 or /analises/1.json
  def show
  end

  # GET /analises/new
  def new
    @analise = Analise.new
  end

  # GET /analises/1/edit
  def edit
  end

  # POST /analises or /analises.json
  def create
    @analise = Analise.new(analise_params)

    respond_to do |format|
      if @analise.save
        format.html { redirect_to @analise, notice: "Análise concluída" }
        format.json { render :show, status: :created, location: @analise }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @analise.errors, status: :unprocessable_entity }
      end
    end
   
  end

  # PATCH/PUT /analises/1 or /analises/1.json
  def update
    respond_to do |format|
      if @analise.update(analise_params)
        format.html { redirect_to @analise, notice: "Análise atualizada." }
        format.json { render :show, status: :ok, location: @analise }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @analise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analises/1 or /analises/1.json
  def destroy
    @analise.destroy
    respond_to do |format|
      format.html { redirect_to analises_url, notice: "A análise foi removida com sucesso." }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analise
      @analise = Analise.find(params[:id])
      
    end

    # Only allow a list of trusted parameters through.
    def analise_params
      params.require(:analise).permit(:Mg2, :Ca2, :K, :N, :Cl, :SO4, :CO3, :HCO3, :pH, :B, :CEa)
    end
  
   
end
