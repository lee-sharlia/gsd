class GsdListsController < ApplicationController
  before_action :set_gsd_list, only: [:show, :edit, :update, :destroy]

  # GET /gsd_lists
  # GET /gsd_lists.json
  def index
    @gsd_lists = GsdList.all
  end

  # GET /gsd_lists/1
  # GET /gsd_lists/1.json
  def show
  end

  # GET /gsd_lists/new
  def new
    @gsd_list = GsdList.new
  end

  # GET /gsd_lists/1/edit
  def edit
  end

  # POST /gsd_lists
  # POST /gsd_lists.json
  def create
    @gsd_list = GsdList.new(gsd_list_params)

    respond_to do |format|
      if @gsd_list.save
        format.html { redirect_to @gsd_list, notice: 'Gsd list was successfully created.' }
        format.json { render :show, status: :created, location: @gsd_list }
      else
        format.html { render :new }
        format.json { render json: @gsd_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gsd_lists/1
  # PATCH/PUT /gsd_lists/1.json
  def update
    respond_to do |format|
      if @gsd_list.update(gsd_list_params)
        format.html { redirect_to @gsd_list, notice: 'Gsd list was successfully updated.' }
        format.json { render :show, status: :ok, location: @gsd_list }
      else
        format.html { render :edit }
        format.json { render json: @gsd_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gsd_lists/1
  # DELETE /gsd_lists/1.json
  def destroy
    @gsd_list.destroy
    respond_to do |format|
      format.html { redirect_to gsd_lists_url, notice: 'Gsd list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gsd_list
      @gsd_list = GsdList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gsd_list_params
      params.require(:gsd_list).permit(:title, :description)
    end
end
