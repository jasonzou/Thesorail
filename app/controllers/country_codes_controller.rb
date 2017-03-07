class CountryCodesController < ApplicationController
  before_action :set_country_code, only: [:show, :edit, :update, :destroy]

  # GET /country_codes
  # GET /country_codes.json
  def index
    @country_codes = CountryCode.all
  end

  # GET /country_codes/1
  # GET /country_codes/1.json
  def show
  end

  # GET /country_codes/new
  def new
    @country_code = CountryCode.new
  end

  # GET /country_codes/1/edit
  def edit
  end

  # POST /country_codes
  # POST /country_codes.json
  def create
    @country_code = CountryCode.new(country_code_params)

    respond_to do |format|
      if @country_code.save
        format.html { redirect_to @country_code, notice: 'Country code was successfully created.' }
        format.json { render :show, status: :created, location: @country_code }
      else
        format.html { render :new }
        format.json { render json: @country_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /country_codes/1
  # PATCH/PUT /country_codes/1.json
  def update
    respond_to do |format|
      if @country_code.update(country_code_params)
        format.html { redirect_to @country_code, notice: 'Country code was successfully updated.' }
        format.json { render :show, status: :ok, location: @country_code }
      else
        format.html { render :edit }
        format.json { render json: @country_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /country_codes/1
  # DELETE /country_codes/1.json
  def destroy
    @country_code.destroy
    respond_to do |format|
      format.html { redirect_to country_codes_url, notice: 'Country code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country_code
      @country_code = CountryCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def country_code_params
      params.require(:country_code).permit(:country_id, :country_code, :country_name)
    end
end
