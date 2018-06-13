class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  
  def index
    @flats = policy_scope(Flat)
  end

  def show
    authorize @flat
  end

  def edit
    authorize @flat
  end

  def new
    @flat = Flat.new
    authorize @flat
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    authorize @flat
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def update
    authorize @flat
    if @flat.update(flat_params)
      redirect_to @flat
    else
      render :edit
    end
  end

  def destroy
    authorize @flat
    @flat.destroy

    redirect_to flats_path
  end

  private 
  
  def flat_params
    params.require(:flat).permit(:name, :description, :photo, :price, :address, :city, :capacity) 
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
