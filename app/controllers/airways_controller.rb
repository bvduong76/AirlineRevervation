class AirwaysController < ApplicationController
  before_action :set_airway, only: [:show, :edit, :update, :destroy]

  # GET /airways
  # GET /airways.json
  def index
    @airways = Airway.all
    if @code = params[:code]
      @info = @airways.where(id: @code)
      render json: @info
    end
  end

  # GET /airways/1
  # GET /airways/1.json
  def show
  end

  # GET /airways/new
  def new
    @airway = Airway.new
  end

  # GET /airways/1/edit
  def edit
  end

  # POST /airways
  # POST /airways.json
  def create
    @airway = Airway.new(airway_params)

    respond_to do |format|
      if @airway.save
        format.html { redirect_to @airway, notice: 'Airway was successfully created.' }
        format.json { render :show, status: :created, location: @airway }
      else
        format.html { render :new }
        format.json { render json: @airway.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airways/1
  # PATCH/PUT /airways/1.json
  def update
    respond_to do |format|
      if @airway.update(airway_params)
        format.html { redirect_to @airway, notice: 'Airway was successfully updated.' }
        format.json { render :show, status: :ok, location: @airway }
      else
        format.html { render :edit }
        format.json { render json: @airway.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airways/1
  # DELETE /airways/1.json
  def destroy
    @airway.destroy
    respond_to do |format|
      format.html { redirect_to airways_url, notice: 'Airway was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airway
      @airway = Airway.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def airway_params
      params.require(:airway).permit(:code, :start, :end, :day, :time)
    end
end
