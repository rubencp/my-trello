class DocumentStatusesController < ApplicationController
  before_action :set_document_status, only: [:show, :edit, :update, :destroy]

  # GET /document_statuses
  # GET /document_statuses.json
  def index
    @document_statuses = DocumentStatus.all
  end

  # GET /document_statuses/1
  # GET /document_statuses/1.json
  def show
  end

  # GET /document_statuses/new
  def new
    @document_status = DocumentStatus.new
  end

  # GET /document_statuses/1/edit
  def edit
  end

  # POST /document_statuses
  # POST /document_statuses.json
  def create
    @document_status = DocumentStatus.new(document_status_params)

    respond_to do |format|
      if @document_status.save
        format.html { redirect_to @document_status, notice: 'Document status was successfully created.' }
        format.json { render :show, status: :created, location: @document_status }
      else
        format.html { render :new }
        format.json { render json: @document_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /document_statuses/1
  # PATCH/PUT /document_statuses/1.json
  def update
    respond_to do |format|
      if @document_status.update(document_status_params)
        format.html { redirect_to @document_status, notice: 'Document status was successfully updated.' }
        format.json { render :show, status: :ok, location: @document_status }
      else
        format.html { render :edit }
        format.json { render json: @document_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /document_statuses/1
  # DELETE /document_statuses/1.json
  def destroy
    @document_status.destroy
    respond_to do |format|
      format.html { redirect_to document_statuses_url, notice: 'Document status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document_status
      @document_status = DocumentStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_status_params
      params.require(:document_status).permit(:name)
    end
end
