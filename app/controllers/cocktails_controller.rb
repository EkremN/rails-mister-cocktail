class CocktailsController < ApplicationController
  def index
    @pictures = [
      "https://images.pexels.com/photos/989703/pexels-photo-989703.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "https://images.pexels.com/photos/34293/lime-club-soda-drink-cocktail.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "https://images.pexels.com/photos/1232152/pexels-photo-1232152.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "https://images.pexels.com/photos/1484678/pexels-photo-1484678.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      ]
    @cocktails = Cocktail.all
  end

  def show
    @cocktails = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktails = Cocktail.find(params[:id])
    @cocktail.update(coctail_params)
    redirect_to cocktail_path(@cocktail)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
