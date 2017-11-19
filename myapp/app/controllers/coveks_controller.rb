class CoveksController < ApplicationController
  before_action :set_covek, only: [:show, :edit, :update, :destroy]

  # GET /coveks
  # GET /coveks.json
  def index
    @coveks = Covek.all
  end

  # GET /coveks/1
  # GET /coveks/1.json
  def show
  end

  # GET /coveks/new
  def new
    @covek = Covek.new
  end

  # GET /coveks/1/edit
  def edit
  end

  # POST /coveks
  # POST /coveks.json
  def create
    @covek = Covek.new(covek_params)

    respond_to do |format|
      if @covek.save
        format.html { redirect_to @covek, notice: 'Covek was successfully created.' }
        format.json { render :show, status: :created, location: @covek }
      else
        format.html { render :new }
        format.json { render json: @covek.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coveks/1
  # PATCH/PUT /coveks/1.json
  def update
    respond_to do |format|
      if @covek.update(covek_params)
        format.html { redirect_to @covek, notice: 'Covek was successfully updated.' }
        format.json { render :show, status: :ok, location: @covek }
      else
        format.html { render :edit }
        format.json { render json: @covek.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coveks/1
  # DELETE /coveks/1.json
  def destroy
    @covek.destroy
    respond_to do |format|
      format.html { redirect_to coveks_url, notice: 'Covek was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_covek
      @covek = Covek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def covek_params
      params.require(:covek).permit(:name, :description, :picture)
    end
end
