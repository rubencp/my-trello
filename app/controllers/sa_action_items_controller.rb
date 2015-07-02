class SaActionItemsController < ApplicationController
  before_action :set_sa_action_item, only: [:show, :edit, :update, :destroy]

  # GET /sa_action_items
  # GET /sa_action_items.json
  def index
    @sa_action_items = SaActionItem.all.includes(:person)
  end

  # GET /sa_action_items/1
  # GET /sa_action_items/1.json
  def show
  end

  # GET /sa_action_items/new
  def new
    @sa_action_item = SaActionItem.new
  end

  # GET /sa_action_items/1/edit
  def edit
  end

  # POST /sa_action_items
  # POST /sa_action_items.json
  def create
    @sa_action_item = SaActionItem.new(sa_action_item_params)

    respond_to do |format|
      if @sa_action_item.save
        format.html { redirect_to @sa_action_item, notice: 'Sa action item was successfully created.' }
        format.json { render :show, status: :created, location: @sa_action_item }
      else
        format.html { render :new }
        format.json { render json: @sa_action_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sa_action_items/1
  # PATCH/PUT /sa_action_items/1.json
  def update
    respond_to do |format|
      if @sa_action_item.update(sa_action_item_params)
        format.html { redirect_to @sa_action_item, notice: 'Sa action item was successfully updated.' }
        format.json { render :show, status: :ok, location: @sa_action_item }
      else
        format.html { render :edit }
        format.json { render json: @sa_action_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sa_action_items/1
  # DELETE /sa_action_items/1.json
  def destroy
    @sa_action_item.destroy
    respond_to do |format|
      format.html { redirect_to sa_action_items_url, notice: 'Sa action item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sa_action_item
      @sa_action_item = SaActionItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sa_action_item_params
      params.require(:sa_action_item).permit(:title, :description, :status, :remark, :link_ulr, :person_id, :sa_action_type_id)
    end
end
