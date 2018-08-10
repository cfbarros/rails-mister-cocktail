class DosesController < ApplicationController

def new
  @cocktail = Cocktail.find(params[:cocktail_id])
  @dose = Dose.new
end

def create
  @cocktail = Cocktail.find(params[:cocktail_id])
  @dose = Dose.new(dose_params)
  @dose.cocktail = Cocktail.find(params[:cocktail_id]


    if @dose.save
      redirect_to @cocktail_path
    else
      render :new
    end
end

def destroy
  @dose.destroy
end

 private

  def dose_params
    params.require(:dose).permit(:description)
  end

end
