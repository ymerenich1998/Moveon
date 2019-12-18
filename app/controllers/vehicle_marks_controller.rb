class VehicleMarksController < ApplicationController
  before_action :set_vehicle_mark, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_marks
  # GET /vehicle_marks.json
  def index
    @vehicle_marks = VehicleMark.all
  end

  # GET /vehicle_marks/1
  # GET /vehicle_marks/1.json
  def show
  end

  # GET /vehicle_marks/new
  def new
    @vehicle_mark = VehicleMark.new
  end

  # GET /vehicle_marks/1/edit
  def edit
  end

  # POST /vehicle_marks
  # POST /vehicle_marks.json
  def create
    @vehicle_mark = VehicleMark.new(vehicle_mark_params)

    respond_to do |format|
      if @vehicle_mark.save
        format.html { redirect_to @vehicle_mark, notice: 'Vehicle mark was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_mark }
      else
        format.html { render :new }
        format.json { render json: @vehicle_mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_marks/1
  # PATCH/PUT /vehicle_marks/1.json
  def update
    respond_to do |format|
      if @vehicle_mark.update(vehicle_mark_params)
        format.html { redirect_to @vehicle_mark, notice: 'Vehicle mark was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_mark }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_marks/1
  # DELETE /vehicle_marks/1.json
  def destroy
    @vehicle_mark.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_marks_url, notice: 'Vehicle mark was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_mark
      @vehicle_mark = VehicleMark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_mark_params
      params.require(:vehicle_mark).permit(:name)
    end
end
