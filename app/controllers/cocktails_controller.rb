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
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
