class PersonTypesController < ApplicationController
  before_action :set_person_type, only: [:show, :edit, :update, :destroy]

  # GET /person_types
  # GET /person_types.json
  def index
    @person_types = PersonType.all
  end

  # GET /person_types/1
  # GET /person_types/1.json
  def show
  end

  # GET /person_types/new
  def new
    @person_type = PersonType.new
  end

  # GET /person_types/1/edit
  def edit
  end

  # POST /person_types
  # POST /person_types.json
  def create
    @person_type = PersonType.new(person_type_params)

    respond_to do |format|
      if @person_type.save
        format.html { redirect_to @person_type, notice: 'Person type was successfully created.' }
        format.json { render :show, status: :created, location: @person_type }
      else
        format.html { render :new }
        format.json { render json: @person_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_types/1
  # PATCH/PUT /person_types/1.json
  def update
    respond_to do |format|
      if @person_type.update(person_type_params)
        format.html { redirect_to @person_type, notice: 'Person type was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_type }
      else
        format.html { render :edit }
        format.json { render json: @person_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_types/1
  # DELETE /person_types/1.json
  def destroy
    @person_type.destroy
    respond_to do |format|
      format.html { redirect_to person_types_url, notice: 'Person type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_type
      @person_type = PersonType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_type_params
      params.require(:person_type).permit(:name)
    end
end
