class SrStatusesController < ApplicationController
  before_action :set_sr_status, only: [:show, :edit, :update, :destroy]

  # GET /sr_statuses
  # GET /sr_statuses.json
  def index
    @sr_statuses = SrStatus.all
  end

  # GET /sr_statuses/1
  # GET /sr_statuses/1.json
  def show
  end

  # GET /sr_statuses/new
  def new
    @sr_status = SrStatus.new
  end

  # GET /sr_statuses/1/edit
  def edit
  end

  # POST /sr_statuses
  # POST /sr_statuses.json
  def create
    @sr_status = SrStatus.new(sr_status_params)

    respond_to do |format|
      if @sr_status.save
        format.html { redirect_to @sr_status, notice: 'Sr status was successfully created.' }
        format.json { render :show, status: :created, location: @sr_status }
      else
        format.html { render :new }
        format.json { render json: @sr_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sr_statuses/1
  # PATCH/PUT /sr_statuses/1.json
  def update
    respond_to do |format|
      if @sr_status.update(sr_status_params)
        format.html { redirect_to @sr_status, notice: 'Sr status was successfully updated.' }
        format.json { render :show, status: :ok, location: @sr_status }
      else
        format.html { render :edit }
        format.json { render json: @sr_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sr_statuses/1
  # DELETE /sr_statuses/1.json
  def destroy
    @sr_status.destroy
    respond_to do |format|
      format.html { redirect_to sr_statuses_url, notice: 'Sr status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sr_status
      @sr_status = SrStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sr_status_params
      params.require(:sr_status).permit(:name)
    end
end
