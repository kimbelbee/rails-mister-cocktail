class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktailparams)
    @cocktail.save
    redirect_to cocktails_path
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(cocktailparams)
  end

  private

  def cocktailparams
    params.require(:cocktail).permit(:name)
  end
end
