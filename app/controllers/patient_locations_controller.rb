class PatientLocationsController < ApplicationController
  before_action :set_patient_location, only: [:show, :edit, :update, :destroy]

  # GET /patient_locations
  # GET /patient_locations.json
  def index
    @patient_locations = PatientLocation.all
  end

  # GET /patient_locations/1
  # GET /patient_locations/1.json
  def show
  end

  # GET /patient_locations/new
  def new
    @patient_location = PatientLocation.new
  end

  # GET /patient_locations/1/edit
  def edit
  end

  # POST /patient_locations
  # POST /patient_locations.json
  def create
    @patient_location = PatientLocation.new(patient_location_params)

    respond_to do |format|
      if @patient_location.save
        format.html { redirect_to @patient_location, notice: 'Patient location was successfully created.' }
        format.json { render :show, status: :created, location: @patient_location }
      else
        format.html { render :new }
        format.json { render json: @patient_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_locations/1
  # PATCH/PUT /patient_locations/1.json
  def update
    respond_to do |format|
      if @patient_location.update(patient_location_params)
        format.html { redirect_to @patient_location, notice: 'Patient location was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient_location }
      else
        format.html { render :edit }
        format.json { render json: @patient_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_locations/1
  # DELETE /patient_locations/1.json
  def destroy
    @patient_location.destroy
    respond_to do |format|
      format.html { redirect_to patient_locations_url, notice: 'Patient location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_location
      @patient_location = PatientLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_location_params
      params.require(:patient_location).permit(:address, :latitude, :longitude)
    end
end
