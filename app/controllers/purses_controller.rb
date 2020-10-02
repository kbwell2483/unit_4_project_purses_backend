class PursesController < ApplicationController
  before_action :set_purse, only: [:show, :update, :destroy]

  # GET /purses
  def index
    @purses = Purse.all

    render json: @purses
  end

  # GET /purses/1
  def show
    render json: @purse
  end

  # POST /purses
  def create
    @purse = Purse.new(purse_params)

    if @purse.save
      render json: @purse, status: :created, location: @purse
    else
      render json: @purse.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /purses/1
  def update
    if @purse.update(purse_params)
      render json: @purse
    else
      render json: @purse.errors, status: :unprocessable_entity
    end
  end

  # DELETE /purses/1
  def destroy
    @purse.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purse
      @purse = Purse.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def purse_params
      params.require(:purse).permit(:brand, :name, :description, :price)
    end
end
