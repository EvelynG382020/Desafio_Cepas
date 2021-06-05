class StrainWinesController < ApplicationController
  before_action :set_strain_wine, only: %i[ show edit update destroy ]

  # GET /strain_wines or /strain_wines.json
  def index
    @strain_wines = StrainWine.all
  end

  # GET /strain_wines/1 or /strain_wines/1.json
  def show
  end

  # GET /strain_wines/new
  def new
    @strain_wine = StrainWine.new
  end

  # GET /strain_wines/1/edit
  def edit
  end

  # POST /strain_wines or /strain_wines.json
  def create
    @strain_wine = StrainWine.new(strain_wine_params)

    respond_to do |format|
      if @strain_wine.save
        format.html { redirect_to @strain_wine, notice: "Strain wine was successfully created." }
        format.json { render :show, status: :created, location: @strain_wine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @strain_wine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /strain_wines/1 or /strain_wines/1.json
  def update
    respond_to do |format|
      if @strain_wine.update(strain_wine_params)
        format.html { redirect_to @strain_wine, notice: "Strain wine was successfully updated." }
        format.json { render :show, status: :ok, location: @strain_wine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @strain_wine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /strain_wines/1 or /strain_wines/1.json
  def destroy
    @strain_wine.destroy
    respond_to do |format|
      format.html { redirect_to strain_wines_url, notice: "Strain wine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_strain_wine
      @strain_wine = StrainWine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def strain_wine_params
      params.fetch(:strain_wine, {})
    end
end
