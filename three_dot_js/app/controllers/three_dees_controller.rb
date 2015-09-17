class ThreeDeesController < ApplicationController
  before_action :set_three_dee, only: [:show, :edit, :update, :destroy]

  # GET /three_dees
  # GET /three_dees.json
  def index
    @three_dees = ThreeDee.all
  end

  # GET /three_dees/1
  # GET /three_dees/1.json
  def show
  end

  # GET /three_dees/new
  def new
    @three_dee = ThreeDee.new
  end

  # GET /three_dees/1/edit
  def edit
  end

  # POST /three_dees
  # POST /three_dees.json
  def create
    @three_dee = ThreeDee.new(three_dee_params)

    respond_to do |format|
      if @three_dee.save
        format.html { redirect_to @three_dee, notice: 'Three dee was successfully created.' }
        format.json { render :show, status: :created, location: @three_dee }
      else
        format.html { render :new }
        format.json { render json: @three_dee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /three_dees/1
  # PATCH/PUT /three_dees/1.json
  def update
    respond_to do |format|
      if @three_dee.update(three_dee_params)
        format.html { redirect_to @three_dee, notice: 'Three dee was successfully updated.' }
        format.json { render :show, status: :ok, location: @three_dee }
      else
        format.html { render :edit }
        format.json { render json: @three_dee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /three_dees/1
  # DELETE /three_dees/1.json
  def destroy
    @three_dee.destroy
    respond_to do |format|
      format.html { redirect_to three_dees_url, notice: 'Three dee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_three_dee
      @three_dee = ThreeDee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def three_dee_params
      params.require(:three_dee).permit(:name, :description)
    end
end
