class KillersController < ApplicationController
  def index
  end

  def new
    @killer = Killer.new
  end

  def show
  end

  def create
    @killer = Killer.new(killer_params)
    if @killer.save
      redirect_to new_killer_path(@killer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_killer
    @killer = Killer.find(params[:killer_id])
  end

  def killer_params
    params.require(:killer).permit(:first_name, :last_name, :description, :rating)
  end
end
