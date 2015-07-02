class SaActionStatusesController < ApplicationController
  before_action :set_sa_action_status, only: [:show, :edit, :update, :destroy]

  # GET /sa_action_statuses
  # GET /sa_action_statuses.json
  def index
    @sa_action_statuses = SaActionStatus.all
  end

  # GET /sa_action_statuses/1
  # GET /sa_action_statuses/1.json
  def show
  end

  # GET /sa_action_statuses/new
  def new
    @sa_action_status = SaActionStatus.new
  end

  # GET /sa_action_statuses/1/edit
  def edit
  end

  # POST /sa_action_statuses
  # POST /sa_action_statuses.json
  def create
    @sa_action_status = SaActionStatus.new(sa_action_status_params)

    respond_to do |format|
      if @sa_action_status.save
        format.html { redirect_to @sa_action_status, notice: 'Sa action status was successfully created.' }
        format.json { render :show, status: :created, location: @sa_action_status }
      else
        format.html { render :new }
        format.json { render json: @sa_action_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sa_action_statuses/1
  # PATCH/PUT /sa_action_statuses/1.json
  def update
    respond_to do |format|
      if @sa_action_status.update(sa_action_status_params)
        format.html { redirect_to @sa_action_status, notice: 'Sa action status was successfully updated.' }
        format.json { render :show, status: :ok, location: @sa_action_status }
      else
        format.html { render :edit }
        format.json { render json: @sa_action_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sa_action_statuses/1
  # DELETE /sa_action_statuses/1.json
  def destroy
    @sa_action_status.destroy
    respond_to do |format|
      format.html { redirect_to sa_action_statuses_url, notice: 'Sa action status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sa_action_status
      @sa_action_status = SaActionStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sa_action_status_params
      params.require(:sa_action_status).permit(:name)
    end
end
