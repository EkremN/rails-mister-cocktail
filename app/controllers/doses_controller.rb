class DosesController < ApplicationController
  def new
    @doses = Dose.new
  end

  def create
    @doses = Dose.find(params[:id])
    @dose.update(coctail_params)
    redirect_to dose_path(@dose)
  end

  def destroy
    @doses = Dose.find(params[:id])

  end

  private

  def dose_params
    params.require(:dose).permit(:name)
  end
end
