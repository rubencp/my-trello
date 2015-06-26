class SaRequestsController < ApplicationController
  before_action :set_sa_request, only: [:show, :edit, :update, :destroy]

  # GET /sa_requests
  # GET /sa_requests.json
  def index
    @sa_requests = SaRequest.all
  end

  # GET /sa_requests/1
  # GET /sa_requests/1.json
  def show
  end

  # GET /sa_requests/new
  def new
    @sa_request = SaRequest.new
  end

  # GET /sa_requests/1/edit
  def edit
  end

  # POST /sa_requests
  # POST /sa_requests.json
  def create
    @sa_request = SaRequest.new(sa_request_params)

    respond_to do |format|
      if @sa_request.save
        format.html { redirect_to @sa_request, notice: 'Sa request was successfully created.' }
        format.json { render :show, status: :created, location: @sa_request }
      else
        format.html { render :new }
        format.json { render json: @sa_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sa_requests/1
  # PATCH/PUT /sa_requests/1.json
  def update
    respond_to do |format|
      if @sa_request.update(sa_request_params)
        format.html { redirect_to @sa_request, notice: 'Sa request was successfully updated.' }
        format.json { render :show, status: :ok, location: @sa_request }
      else
        format.html { render :edit }
        format.json { render json: @sa_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sa_requests/1
  # DELETE /sa_requests/1.json
  def destroy
    @sa_request.destroy
    respond_to do |format|
      format.html { redirect_to sa_requests_url, notice: 'Sa request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sa_request
      @sa_request = SaRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sa_request_params
      params.require(:sa_request).permit(:title, :topic, :status, :decision, :applicant, :sa_incharge, :impacted_projects, :sub_projects, :mechanical_interfaces)
    end
end
