class DosesController < ApplicationController
  def new
    #1 empty dose
    @dose = Dose.new
    #2 find a cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    # 3 new dose des ing
    @dose = Dose.new(dose_params)
    # 4 find list somthing 1
    @cocktail = Cocktail.find(params[:cocktail_id])
    # 5 attach dose to cocktail
    @dose.cocktail = @cocktail
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
