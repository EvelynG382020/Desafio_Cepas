class OenologistsController < ApplicationController
  before_action :set_oenologist, only: %i[ show edit update destroy ]

  # GET /oenologists or /oenologists.json
  def index
    @oenologists = Oenologist.all
  end

  # GET /oenologists/1 or /oenologists/1.json
  def show
  end

  # GET /oenologists/new
  def new
    @oenologist = Oenologist.new
    
  end

  # GET /oenologists/1/edit
  def edit
  end

  # POST /oenologists or /oenologists.json
  def create
    @oenologist = Oenologist.new(oenologist_params)

    respond_to do |format|
      if @oenologist.save
        format.html { redirect_to @oenologist, notice: "Oenologist was successfully created." }
        format.json { render :show, status: :created, location: @oenologist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @oenologist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oenologists/1 or /oenologists/1.json
  def update
    respond_to do |format|
      if @oenologist.update(oenologist_params)
        format.html { redirect_to @oenologist, notice: "Oenologist was successfully updated." }
        format.json { render :show, status: :ok, location: @oenologist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @oenologist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oenologists/1 or /oenologists/1.json
  def destroy
    @oenologist.destroy
    respond_to do |format|
      format.html { redirect_to oenologists_url, notice: "Oenologist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oenologist
      @oenologist = Oenologist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def oenologist_params
      params.require(:oenologist).permit(:name, :age, :nationality, :editor, :writer, :reviewer, magazine_ids: [])
    end
end
