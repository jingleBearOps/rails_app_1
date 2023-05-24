class TopWaresController < ApplicationController
  before_action :set_top_ware, only: %i[ show edit update destroy ]

  # GET /top_wares or /top_wares.json
  def index
    @top_wares = TopWare.all
  end

  # GET /top_wares/1 or /top_wares/1.json
  def show
  end

  # GET /top_wares/new
  def new
    @top_ware = TopWare.new
  end

  # GET /top_wares/1/edit
  def edit
  end

  # POST /top_wares or /top_wares.json
  def create
    @top_ware = TopWare.new(top_ware_params)

    respond_to do |format|
      if @top_ware.save
        format.html { redirect_to top_ware_url(@top_ware), notice: "Top ware was successfully created." }
        format.json { render :show, status: :created, location: @top_ware }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @top_ware.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /top_wares/1 or /top_wares/1.json
  def update
    respond_to do |format|
      if @top_ware.update(top_ware_params)
        format.html { redirect_to top_ware_url(@top_ware), notice: "Top ware was successfully updated." }
        format.json { render :show, status: :ok, location: @top_ware }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @top_ware.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /top_wares/1 or /top_wares/1.json
  def destroy
    @top_ware.destroy

    respond_to do |format|
      format.html { redirect_to top_wares_url, notice: "Top ware was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_top_ware
      @top_ware = TopWare.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def top_ware_params
      params.require(:top_ware).permit(:style, :description, :price, :origin)
    end
end
