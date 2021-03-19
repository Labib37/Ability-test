class VehculesController < ApplicationController
  before_action :set_vehcule, only: [:show, :update, :destroy]

  # GET /vehcules
  def index
    @vehcules = Vehcule.all

    render json: @vehcules
  end

  # GET /vehcules/1
  def show
    render json: @vehcule
  end

  # POST /vehcules
  def create
    @vehcule = Vehcule.new(vehcule_params)

    if @vehcule.save
      render json: @vehcule, status: :created, location: @vehcule
    else
      render json: @vehcule.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vehcules/1
  def update
    if @vehcule.update(vehcule_params)
      render json: @vehcule
    else
      render json: @vehcule.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vehcules/1
  def destroy
    @vehcule.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehcule
      @vehcule = Vehcule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vehcule_params
      params.require(:vehcule).permit(:mark, :vehicule, :year, :description, :sold)
    end
end
