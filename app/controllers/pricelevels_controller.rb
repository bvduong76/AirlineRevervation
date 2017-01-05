class PricelevelsController < ApplicationController
  before_action :set_pricelevel, only: [:show, :edit, :update, :destroy]

  # GET /pricelevels
  # GET /pricelevels.json
  def index
    @pricelevels = Pricelevel.all
    if @name = params[:name]
      @price = @pricelevels.where(id: @name)
      render json: @price
    end
    # if @id = params[:id]
    #   @price = @pricelevels.where(id: @id)
    #   render json: @price
    # end
  end

  # GET /pricelevels/1
  # GET /pricelevels/1.json
  def show
  end

  # GET /pricelevels/new
  def new
    @pricelevel = Pricelevel.new
  end

  # GET /pricelevels/1/edit
  def edit
  end

  # POST /pricelevels
  # POST /pricelevels.json
  def create
    @pricelevel = Pricelevel.new(pricelevel_params)

    respond_to do |format|
      if @pricelevel.save
        format.html { redirect_to @pricelevel, notice: 'Pricelevel was successfully created.' }
        format.json { render :show, status: :created, location: @pricelevel }
      else
        format.html { render :new }
        format.json { render json: @pricelevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pricelevels/1
  # PATCH/PUT /pricelevels/1.json
  def update
    respond_to do |format|
      if @pricelevel.update(pricelevel_params)
        format.html { redirect_to @pricelevel, notice: 'Pricelevel was successfully updated.' }
        format.json { render :show, status: :ok, location: @pricelevel }
      else
        format.html { render :edit }
        format.json { render json: @pricelevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pricelevels/1
  # DELETE /pricelevels/1.json
  def destroy
    @pricelevel.destroy
    respond_to do |format|
      format.html { redirect_to pricelevels_url, notice: 'Pricelevel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pricelevel
      @pricelevel = Pricelevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pricelevel_params
      params.require(:pricelevel).permit(:name, :price)
    end
end
