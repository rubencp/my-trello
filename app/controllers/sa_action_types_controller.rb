class SaActionTypesController < ApplicationController
  before_action :set_sa_action_type, only: [:show, :edit, :update, :destroy]

  # GET /sa_action_types
  # GET /sa_action_types.json
  def index
    @sa_action_types = SaActionType.all
  end

  # GET /sa_action_types/1
  # GET /sa_action_types/1.json
  def show
  end

  # GET /sa_action_types/new
  def new
    @sa_action_type = SaActionType.new
  end

  # GET /sa_action_types/1/edit
  def edit
  end

  # POST /sa_action_types
  # POST /sa_action_types.json
  def create
    @sa_action_type = SaActionType.new(sa_action_type_params)

    respond_to do |format|
      if @sa_action_type.save
        format.html { redirect_to @sa_action_type, notice: 'Sa action type was successfully created.' }
        format.json { render :show, status: :created, location: @sa_action_type }
      else
        format.html { render :new }
        format.json { render json: @sa_action_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sa_action_types/1
  # PATCH/PUT /sa_action_types/1.json
  def update
    respond_to do |format|
      if @sa_action_type.update(sa_action_type_params)
        format.html { redirect_to @sa_action_type, notice: 'Sa action type was successfully updated.' }
        format.json { render :show, status: :ok, location: @sa_action_type }
      else
        format.html { render :edit }
        format.json { render json: @sa_action_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sa_action_types/1
  # DELETE /sa_action_types/1.json
  def destroy
    @sa_action_type.destroy
    respond_to do |format|
      format.html { redirect_to sa_action_types_url, notice: 'Sa action type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sa_action_type
      @sa_action_type = SaActionType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sa_action_type_params
      params.require(:sa_action_type).permit(:name)
    end
end
