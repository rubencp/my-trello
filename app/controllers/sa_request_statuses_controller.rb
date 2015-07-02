class SaRequestStatusesController < ApplicationController
  before_action :set_sa_request_status, only: [:show, :edit, :update, :destroy]

  # GET /sa_request_statuses
  # GET /sa_request_statuses.json
  def index
    @sa_request_statuses = SaRequestStatus.all
  end

  # GET /sa_request_statuses/1
  # GET /sa_request_statuses/1.json
  def show
  end

  # GET /sa_request_statuses/new
  def new
    @sa_request_status = SaRequestStatus.new
  end

  # GET /sa_request_statuses/1/edit
  def edit
  end

  # POST /sa_request_statuses
  # POST /sa_request_statuses.json
  def create
    @sa_request_status = SaRequestStatus.new(sa_request_status_params)

    respond_to do |format|
      if @sa_request_status.save
        format.html { redirect_to @sa_request_status, notice: 'Sa request status was successfully created.' }
        format.json { render :show, status: :created, location: @sa_request_status }
      else
        format.html { render :new }
        format.json { render json: @sa_request_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sa_request_statuses/1
  # PATCH/PUT /sa_request_statuses/1.json
  def update
    respond_to do |format|
      if @sa_request_status.update(sa_request_status_params)
        format.html { redirect_to @sa_request_status, notice: 'Sa request status was successfully updated.' }
        format.json { render :show, status: :ok, location: @sa_request_status }
      else
        format.html { render :edit }
        format.json { render json: @sa_request_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sa_request_statuses/1
  # DELETE /sa_request_statuses/1.json
  def destroy
    @sa_request_status.destroy
    respond_to do |format|
      format.html { redirect_to sa_request_statuses_url, notice: 'Sa request status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sa_request_status
      @sa_request_status = SaRequestStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sa_request_status_params
      params.require(:sa_request_status).permit(:name)
    end
end
