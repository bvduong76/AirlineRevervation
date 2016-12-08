class FlightdetailsController < ApplicationController
  before_action :set_flightdetail, only: [:show, :edit, :update, :destroy]

  # GET /flightdetails
  # GET /flightdetails.json
  def index
    @flightdetails = Flightdetail.all
  end

  # GET /flightdetails/1
  # GET /flightdetails/1.json
  def show
  end

  # GET /flightdetails/new
  def new
    @flightdetail = Flightdetail.new
  end

  # GET /flightdetails/1/edit
  def edit
  end

  # POST /flightdetails
  # POST /flightdetails.json
  def create
    @flightdetail = Flightdetail.new(flightdetail_params)

    respond_to do |format|
      if @flightdetail.save
        format.html { redirect_to @flightdetail, notice: 'Flightdetail was successfully created.' }
        format.json { render :show, status: :created, location: @flightdetail }
      else
        format.html { render :new }
        format.json { render json: @flightdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flightdetails/1
  # PATCH/PUT /flightdetails/1.json
  def update
    respond_to do |format|
      if @flightdetail.update(flightdetail_params)
        format.html { redirect_to @flightdetail, notice: 'Flightdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @flightdetail }
      else
        format.html { render :edit }
        format.json { render json: @flightdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flightdetails/1
  # DELETE /flightdetails/1.json
  def destroy
    @flightdetail.destroy
    respond_to do |format|
      format.html { redirect_to flightdetails_url, notice: 'Flightdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flightdetail
      @flightdetail = Flightdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flightdetail_params
      params.require(:flightdetail).permit(:booking, :flight)
    end
end
