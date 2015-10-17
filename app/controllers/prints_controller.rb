class PrintsController < ApplicationController
  def index
 
    @prints = Print.all
 
  end

  def new
    @print = Print.new
  end

  def create
    @print = Print.new(print_params)
    
    if @print.save
      redirect_to prints_path, notice: "The print #{@print.name} has been uploaded."
    else
      render "new"
    end
    
  end

  def destroy
    @print = Print.find(params[:id])
    @print.destroy
    redirect_to prints_path, notice: "The print #{@print.name} has been deleted."
  end
  
private 
  def print_params
    params.require(:print).permit(:name, :attachment, :materiau, :qualite, :livraison)  
  end
  
end
