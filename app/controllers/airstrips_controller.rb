class AirstripsController < ApplicationController
  before_action :set_airstrip, only: [:show, :edit, :update, :destroy]

  # GET /airstrips
  # GET /airstrips.json
  def index
    @airstrips = Airstrip.all
  end

  # GET /airstrips/1
  # GET /airstrips/1.json
  def show
  end

  # GET /airstrips/new
  def new
    @airstrip = Airstrip.new
  end

  # GET /airstrips/1/edit
  def edit
  end

  # POST /airstrips
  # POST /airstrips.json
  def create
    @airstrip = Airstrip.new(airstrip_params)

    respond_to do |format|
      if @airstrip.save
        format.html { redirect_to @airstrip, notice: 'Airstrip was successfully created.' }
        format.json { render :show, status: :created, location: @airstrip }
      else
        format.html { render :new }
        format.json { render json: @airstrip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airstrips/1
  # PATCH/PUT /airstrips/1.json
  def update
    respond_to do |format|
      if @airstrip.update(airstrip_params)
        format.html { redirect_to @airstrip, notice: 'Airstrip was successfully updated.' }
        format.json { render :show, status: :ok, location: @airstrip }
      else
        format.html { render :edit }
        format.json { render json: @airstrip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airstrips/1
  # DELETE /airstrips/1.json
  def destroy
    @airstrip.destroy
    respond_to do |format|
      format.html { redirect_to airstrips_url, notice: 'Airstrip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airstrip
      @airstrip = Airstrip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def airstrip_params
      params.require(:airstrip).permit(:start, :end)
    end
end
